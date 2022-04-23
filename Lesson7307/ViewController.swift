
import UIKit

class ViewController: UIViewController {
    
    private lazy var chatTableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    private lazy var myButton: UIBarButtonItem = {
        let view = UIBarButtonItem(image: UIImage(systemName: "heart"), style: .plain, target: self, action: #selector(test))
        
        //view.setTitle("+", for: .normal)
       // view.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
//        view.layer.cornerRadius = 100 / 2
//        view.backgroundColor = .blue
        return view
    }()
    
    var chats: [ChatModel] = [
        ChatModel(name: "Nursultan", image: UIImage(systemName: "heart")!, message: "lalafo"),
        ChatModel(name: "Sultan", image: UIImage(systemName: "flag")!, message: "i'm the best"),
        ChatModel(name: "Akylbek", image: UIImage(systemName: "flag")!, message: "сегодня мы кайфуем!")
    ]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(chatTableView)
        
        self.navigationItem.rightBarButtonItem = myButton
        title = "chats"
        chatTableView.translatesAutoresizingMaskIntoConstraints = false
        chatTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        chatTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        chatTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        chatTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
//        view.addSubview(myButton)
//        myButton.translatesAutoresizingMaskIntoConstraints = false
//        myButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
//        myButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25).isActive = true
//        myButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        myButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    @objc func test() {
        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ChatCell()
        
        cell.chatImage.image = chats[indexPath.row].image
        cell.chatName.text = chats[indexPath.row].name
        cell.lastMessage.text = chats[indexPath.row].message
        
        return cell
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
}
