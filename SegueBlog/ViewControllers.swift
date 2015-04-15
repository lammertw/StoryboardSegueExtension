//
//  ViewControllers.swift
//  SegueBlog
//
//  Created by Lammert Westerhoff on 15/04/15.
//  Copyright (c) 2015 Xebia. All rights reserved.
//

import Foundation
import UIKit

class Book {
    let title: String
    let author: Author

    init(title: String, author: Author) {
        self.title = title
        self.author = author
    }
}

class Author {
    let name: String

    init(name: String) {
        self.name = name
    }
}

class BookViewController: UIViewController {

    @IBOutlet weak var bookTitleLabel: UILabel!

    var book: Book!

    override func viewDidLoad() {
        book = Book(title: "Swift Blogs", author: Author(name: "Lammert Westerhoff"))

        bookTitleLabel.text = book.title
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        segue.destinationViewControllerAs(AuthorViewController.self)?.author = book.author
    }
}

class AuthorViewController: UIViewController {

    @IBOutlet weak var authorNameLabel: UILabel!

    var author: Author!

    override func viewDidLoad() {
        authorNameLabel.text = author.name
    }

    @IBAction func dismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
