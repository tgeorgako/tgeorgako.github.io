## Πανεπιστήμιο Πατρών

## Δ.Π.Μ.Σ. Αλληλεπίδραση Ανθρώπου Υπολογιστή

#### Μάθημα: Συνεργατικές Τεχνολογίες

#### Γεωργακόπουλος Θεόδωρος

#### Εργασία: Φτιάξτε το βιογραφικό σας σε ψηφιακή και φυσική μορφή.
------

#### Παραδοτέο 1

**[Σύνδεσμος](https://tgeorgako.github.io/) για την ψηφιακή μορφή του βιογραφικού.**

**[Σύνδεσμος](https://github.com/tgeorgako/tgeorgako.github.io) για το αποθετήριο του κώδικα.**

------

Για την υλοποίηση του ζητουμένου της εργασίας χρησιμοποιήθηκε το πρότυπο “modern-resume-theme” από το αποθετήριο [https://github.com/sproogen/modern-resume-theme](https://github.com/sproogen/modern-resume-theme). Έγινε χρήση των εργαλείων GitHub  Desktop  και Netbeans  για βελτίωση της παραγωγικότητας.

Τα βήματα της υλοποίησης ήταν τα εξής:

 - Δημιουργία αποθετηρίου με το ψευδώνυμο του GitHub  και δημοσιοποίηση του, ώστε να εμφανιστεί στο διαδίκτυο η ιστοσελίδα του βιογραφικού μέσω του GitHub  Pages.  
   
 - Fork  στο αποθετήριο του προτύπου.  

 - Clone  στο αποθετήριο της ιστοσελίδας των αρχείων του προτύπου.  

 - Clone  των φακέλων “include” και “_sass”, ώστε να είναι δυνατή η
   παραμετροποίηση του αρχικού προτύπου.  

 - Δημιουργία νέου τύπου κατηγορίας languages & skills.
          
 - Εισαγωγή των προσωπικών στοιχείων.         

 - Επιπλέον παραμετροποίηση με χρήση CSS.

---
#### Παραδοτέο 2
##### i) Υλοποίηση τοπικά

Για την υλοποίηση του ζητουμένου της εργασίας εκτελέστηκαν τα εξής βήματα:

- Προστέθηκε σύνδεσμος για το pdf αρχείο του βιογραφικού στην αρχική σελίδα.
- Προστέθηκε σύνδεσμος για το pdf αρχείο του βιογραφικού στην αρχική σελίδα.
- Προσθήκη όλων των πληροφοριών του βιογραφικού στο αρχείο _config.yml ώστε να μην έχουμε πολλά αρχεία με πληροφορίες.
- Παραμετροποίηση με CSS ώστε να είναι η html πιο "φιλική" στη μετατροπή σε pdf.
 - Χρησιμοποιήθηκαν τοπικά στον υπολογιστή τα εργαλεία pandoc, Latex και το template "eisvogel". Με την εκτέλεση της εντολής "pandoc -s https://tgeorgako.github.io/ -o resume.pdf --template=eisvogel.tex --pdf-engine=xelatex" δημιουργήθηκε το αρχείο [resume.pdf](https://github.com/tgeorgako/tgeorgako.github.io/blob/master/resume.pdf) όπως φαίνεται στο ακόλουθο στιγμιότυπο.

![N|Solid](https://github.com/tgeorgako/tgeorgako.github.io/blob/master/images/GitScreenshot.jpg?raw=true)

##### ii) Υλοποίηση με Continuous Integration
Σκοπός του ζητουμένου είναι να δημιουργείται αυτόματα νέο pdf αρχείο με κάθε αλλαγή στο αποθετήριο. Για την εργασία αυτή χρησιμοποίηθηκε το περιβάλλον CircleCI και έγιναν αναρίθμητες παραμετροποιήσεις και βελτιώσεις ώστε να πραγματοποιηθούν οι απαραίτητες λειτουργίες. Τα κυρίως βήματα που εκτελέστηκαν ήταν τα εξής:

- Δημιουργία λογαριασμού στο CircleCI για Continuous Integration και ενσωμάτωση στο Github.
- Δημιουργία και παραμετροποίηση του απαράιτητου config αρχείου για το CircleCI.
- Δημιουργήθηκε το αρχείο makefile ώστε να εκτελούνται μέσω αυτού οι εντολές για να δημιουργηθεί με pandoc το αρχείο Pdf.
- Επιλογή εικόνας συστήματος Linux στο CircleCI με Pandoc προεγκατεστημένο.
- Προστέθηκε νέο SSH key στο CircleCi ώστε να είναι δυνατή και η εγγραφή εκτός από την ανάγνωση στην κονσόλα του CircleCI.
- Παραμετροποίηση του CircleCI ώστε σε κάθε commit να εκτελεί το makefile και να δημιουργέι νέο Pdf αρχείο.
- Παραμετροποιήθηκε το CircleCI ώστε να μην εκτελέι νέο build όταν γίνεται commit το upload του αρχείου Pdf. Με αυτό το τρόπο, αποφεύγεται η δημιουργία ατέρμονου βρόγχου επειδή κάθε εκτέλεση θα δημιουργούσε νέα.

Το βίντεο που ακολουθεί απεικονίζει την πορεία του workflow στο CircleCI:

[![Watch the video](https://github.com/tgeorgako/tgeorgako.github.io/blob/master/images/VideoScreenshot.jpg?raw=true)](https://drive.google.com/file/d/1TxMLreTVBiEU_S0UBnotvj3tT3iiwEAX/view?usp=sharing)

---
**[Σύνδεσμος](https://circleci.com/gh/tgeorgako/tgeorgako.github.io)  για το workflow του CircleCI.**

**Build Status**
[![tgeorgako](https://circleci.com/gh/tgeorgako/tgeorgako.github.io.svg?style=svg)](https://circleci.com/gh/tgeorgako/tgeorgako.github.io)
