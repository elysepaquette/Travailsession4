travail_session.pdf: graph_sexe.pdf graph_region.pdf graph_reseau.pdf graph_reseau_classe.pdf
	pdflatex travail_session.tex
	bibtex travail_session
	pdflatex travail_session.tex
graph_sexe.pdf graph_region.pdf graph_reseau.pdf graph_reseau_classe.pdf: tables.db
	Rscript figures_analyses.R
tables.db: bd_cours.csv bd_liens.csv bd_etudiants.csv
	Rscript injection_données.R
bd_cours.csv bd_liens.csv bd_etudiants.csv: Base_Donnees_Cours.csv Base_Donnees_Etudiants.csv Base_Donnees_Liens.csv bd_cours.csv bd_etudiants.csv bd_liens.csv data_cours_BM_CV_NB.csv data_liens_BM_CV_NB.csv data_etudiants_BM_CV_NB.csv Données_Cours_Anne-So_Daphné_Francois_Formulaire.csv Données_cours_Desjardins_Rioux_Roi_Aparicio.csv Données_Cours_GB_JCA_KM_EP.csv donnees_Cours_IB_CAD_EL_AR.csv Données_Etudiant_GB_JCA_KM_EP.csv Données_Étudiants_Anne-So_Daphné_Francois_Formulaire.csv Données_Étudiants_Desjardins_Rioux_Roi_Aparicio.csv donnees_Étudiants_IB_CAD_EL_AR.csv Données_Liens_Anne-So_Daphné_Francois_Formulaire.csv Données_Liens_Desjardins_Rioux_Roi_Aparicio.csv Données_Liens_GB_JCA_KM_EP.csv donnees_Liens_IB_CAD_EL_AR.csv
	Rscript nettoyage_equipes_1-7.r
