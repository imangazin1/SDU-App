//
//  FacultiesViewController.swift
//  SduApp
//
//  Created by Магжан Имангазин on 10/22/20.
//  Copyright © 2020 Akzhol Imangazin. All rights reserved.
//

import UIKit

class FacultiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var faculty = [
        Faculties.init(facultyLabel: "SDU Business School", facultyImageView: UIImage.init(named: "sdubs")!, myText: "Today SDU Business School is one of the leading business schools in our country with a prestigious international recognition both in research and education. We offer programs in all levels including foundation,undergraduate, MA and PhD programs. This faculty has specialities like Accountaing & Audit, Digital Marketing, Economics, Finance and Management.", myImageView: UIImage.init(named: "sdubs1")!),
        Faculties.init(facultyLabel: "SDU Engineering & Natural Sciences", facultyImageView: UIImage.init(named: "sdueng")!, myText: "The Faculty of Engineering & Natural Sciences prepares future specialists in IT and technical areas. In our undergraduate specialties degree programs, students become high-level specialists with technical and management skills. This faculty has specialities like Computer Science, Information Systems, Computer Modeling and Mathematics.", myImageView: UIImage.init(named: "sdueng1")!),
        Faculties.init(facultyLabel: "SDU Law & Social Sciences", facultyImageView: UIImage.init(named: "sdulaw")!, myText: "The Faculty of Law and Social Sciences is the leading educational and scientific legal institution in Kazakhstan. The scientists of the faculty are implementing a large-scale program of research work in various fields of legal science, making a significant contribution. This faculty has specialities like History, International Law, International relations and Journalism.", myImageView: UIImage.init(named: "sdubs2")!),
        Faculties.init(facultyLabel: "SDU Education & Humanities", facultyImageView: UIImage.init(named: "sdu2")!, myText: "The Faculty of Education and Humanities offers programs of English (TEFL/TESOL), Kazakh language, and science teachers (STEM), including Humanities: Translation Studies and Philology (Linguistics). We pride ourselves on the high quality of our graduates, who are equipped with 21st century skills and are highly demanded on the market. All programs in the faculty offer contemporary courses on methods of teaching, education, translation, and research.", myImageView: UIImage.init(named: "sduedu")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        faculty.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FacultiesCell") as? FacultiesCell
        cell?.facultyLabel.text = faculty[indexPath.row].facultyLabel
        cell?.facultyImage.image = faculty[indexPath.row].facultyImageView
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            navigationController?.pushViewController(detailVC, animated: true)
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = (myTableView.indexPathForSelectedRow?.row)!
        let destination = segue.destination as! DetailViewController
        destination.text = faculty[index].myText
        destination.image = faculty[index].myImageView
    }
}
