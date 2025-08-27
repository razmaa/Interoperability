
import SwiftUI
import UIKit

class BasicUIKitViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "Hello, from UIKit!"
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

struct BasicUIKitView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> BasicUIKitViewController {
        BasicUIKitViewController()
    }
    
    func updateUIViewController(_ uiViewController: BasicUIKitViewController, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("This is SwiftUI")
                .font(.largeTitle)
            BasicUIKitView()
                .frame(height: 100)
        }
        .padding()
    }
}



