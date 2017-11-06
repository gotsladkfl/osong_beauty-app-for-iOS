
import UIKit

class VacationViewController: UIViewController {
    
    @IBOutlet weak var imageVRView: GVRPanoramaView!
    @IBOutlet weak var videoVRView: GVRVideoView!

    
    enum Media {
        static var photoArray = ["sindhu_beach.jpg", "grand_canyon.jpg", "underwater.jpg"]
        
        
    }
    
    var currentView: UIView?
    var currentDisplayMode = GVRWidgetDisplayMode.embedded
    var isPaused = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        imageVRView.isHidden = true
      
        videoVRView.isHidden = true
        
        imageVRView.load(UIImage(named: Media.photoArray.first!),
                         of: GVRPanoramaImageType.mono)
       
        imageVRView.enableFullscreenButton = true
        imageVRView.delegate = self
        
        var videoName = "booth1"
        let fileURL: URL? = URL(fileURLWithPath: Bundle.main.path(forResource: videoName, ofType: "mp4")!)
        
        videoVRView.load(from: fileURL)
       
        videoVRView.enableFullscreenButton = true
        videoVRView.delegate = self
    }
    
    func refreshVideoPlayStatus() {
        if currentView == videoVRView && currentDisplayMode != GVRWidgetDisplayMode.embedded {
            videoVRView?.resume()
            isPaused = false
        } else {
            videoVRView?.pause()
            isPaused = true
        }
    }
    
    func setCurrentViewFromTouch(touchPoint point:CGPoint) {
        if imageVRView!.frame.contains(point) {
            currentView = imageVRView
        } else  if videoVRView!.frame.contains(point) {
            currentView = videoVRView
        }
    }
}

extension VacationViewController: GVRWidgetViewDelegate {
    func widgetView(_ widgetView: GVRWidgetView!, didLoadContent content: Any!) {
        if content is UIImage {
            imageVRView.isHidden = false
     
        } else if content is NSURL {
            videoVRView.isHidden = false
            
            refreshVideoPlayStatus()
        }
    }
    
    func widgetView(_ widgetView: GVRWidgetView!, didFailToLoadContent content: Any!, withErrorMessage errorMessage: String!)  {
        print(errorMessage)
    }
    
    func widgetView(_ widgetView: GVRWidgetView!, didChange displayMode: GVRWidgetDisplayMode) {
        currentView = widgetView
        currentDisplayMode = displayMode
        refreshVideoPlayStatus()
        if currentView == imageVRView && currentDisplayMode != GVRWidgetDisplayMode.embedded {
            view.isHidden = true
        } else {
            view.isHidden = false
        }
    }
    
    func widgetViewDidTap(_ widgetView: GVRWidgetView!) {
        guard currentDisplayMode != GVRWidgetDisplayMode.embedded else {return}
        if currentView == imageVRView {
            Media.photoArray.append(Media.photoArray.removeFirst())
            imageVRView?.load(UIImage(named: Media.photoArray.first!), of: GVRPanoramaImageType.mono)
        } else {
            if isPaused {
                videoVRView?.resume()
            } else {
                videoVRView?.pause()
            }
            isPaused = !isPaused
        }
    }
}

extension VacationViewController: GVRVideoViewDelegate {
    func videoView(_ videoView: GVRVideoView!, didUpdatePosition position: TimeInterval) {
        OperationQueue.main.addOperation() {
            if position >= videoView.duration() {
                videoView.seek(to: 0)
                videoView.resume()
            }
        }
    }
}

class TouchView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if let vacationViewController = viewController() as? VacationViewController , event?.type == UIEventType.touches {
            vacationViewController.setCurrentViewFromTouch(touchPoint: point)
        }
        return true
    }
    
    func viewController() -> UIViewController? {
        if self.next!.isKind(of: VacationViewController.self) {
            return self.next as? UIViewController
        } else {
            return nil
        }
    }
}
