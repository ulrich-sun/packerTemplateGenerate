# GENERATION DE FICHIER PACKER POUR LE BUILD D'IMAGE VIA ANSIBLE & AUTOMATISATION DU BUILD VIA GITHUB ACTIONS

## Contexte & Objectifs
Ce projet s'intitule dans un cas d'entreprise ou nous avons besoin de generer des images packer
Alors il peut arriver que l'equipe va creer des fichiers a la main pour chacun des environnements ou nous avons besoins de images 
Ce qui voudrait dire que a chaque fois que nous voudrions faire une mise a jour des fichiers de build nous aurons besoin d'aller fichier par fichiers et realiser ainsi un update.

Donc notre objectif principal sera de realiser une automatisation de la generation des templates et ainsi avoir une mise de l'ensemble de nos 
images a un instant bien precis et ainsi avoir toutes les images a jour et disponible sur l'ensemble des environnements que nous disposons.

## Presentation des Environnements
Dans notre cas nous allons travailler Principalement sur les environnements suivants:
    - AWS : Plateforme Cloud Leader sur le marche
    - Docker: Plateforme de Conteneurisation des Microservices
    - AZURE : Plateforme Cloud Second sur le Marche apres AWS
    - VirtualBox: Plateforme de Virtualisation de Niveau 2 
    - VMWARE: Plateforme de virtualisation decouple en deux (niveau 1 (vsphere) & niveau 2 (workstation) )
## Presentation des Outils
    - Packer : Outils de Creation d'image systeme personnalise
    - Ansible : Outils de Gestion des configurations 
    - Docker : Outils de Conteneurisation
    - Terraform : Outils d'automatisation de creation d'infrastructure Cloud
    - Github : Gestion de Code Source & Outils de CI/CD via Github Actions
    - VSCode : Outils d'ecriture de Code et tres maniable via sa panoplie de plugins
    - Linux : Systeme d'exploitation Free Opensource (ubuntu, Debian, CentOs)
    - Windows : Systeme d'exploitation Microsoft (WINS2021, WIN10, WIN11)

## Mise en place des differents environnements
    - Packer :  [Installation de Packer](https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli)
                [Cours Packer](https://eazytraining.fr/cours/packer-pour-devops-industrialiser-la-creation-de-vos-images-cloud/)
    - Ansible : [Installation de Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html)
                [Cours Ansible](https://eazytraining.fr/cours/ansible-pour-devops/)
    - Docker :  [Installation de Docker](https://get.docker.com/)
                [Cours Docker](https://eazytraining.fr/cours/introduction-a-docker/) 
    - AWS :     [Creation de Compte AWS](https://aws.amazon.com/fr/)
                [Cours AWS](https://eazytraining.fr/cours/aws-preparation-a-la-certification-cloud-practitioner-2020/)
    - AZURE :   [Creation de Compte AZURE](https://portal.azure.com/)
                [Cours Azure](https://eazytraining.fr/cours/preparez-la-certification-azure-fundamental-az-900/)
    - Github :  [Creation Compte Github](github.com)
                [Cours sur Git](https://eazytraining.fr/cours/introduction-a-git/)
    - VSCode: [Telechargement de VSCODE](https://code.visualstudio.com/download)
NB: La mise en place de l'outils de gestion de configuration Ansible , se fera uniquement sur une plateforme de type Unix.

Une fois la mise en place de notre environnement de travail , alors il  nous faut passer a l'implementation de notre solution.

## Implementation de la solution
### Ansible
Au niveau de Ansible nous allons recuperer le code correspondant sur notre serveur afin de verifier que la generation de nos templates s'effectue convenable avant toute automatisation.
```bash
git clone --branch ansible https://github.com/ulrich-sun/packerTemplateGenerate.git 
cd packerTemplateGenerate.git
```
Une fois le telechargement effectuer vous aurez cette aborescence:

    - anible.cfg
    - inventaire.yml
    - 
