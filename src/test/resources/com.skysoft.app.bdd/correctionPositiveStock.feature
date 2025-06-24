Feature: Correction positive de stock
  En tant que entreprise
  Je veux enregistrer une correction positive de stock

  Scenario Outline: 1.0 création d'une correction positive de stock
    Given les informations du mouvement de stock à "créer" avec "<referenceIdContexte>" sont
      | quantite   | articleId   | articleCode   | articleDesignation   | typeMvtStk   | sourceMvtStk   |
      | <quantite> | <articleId> | <articleCode> | <articleDesignation> | <typeMvtStk> | <sourceMvtStk> |
    When "créer" le mouvement de stock avec "<referenceIdContexte>"
    Then le mouvement de stock est "créé" avec "<referenceIdContexte>"
      | quantite   | articleId   | articleCode   | articleDesignation   | typeMvtStk   | sourceMvtStk   |
      | <quantite> | <articleId> | <articleCode> | <articleDesignation> | <typeMvtStk> | <sourceMvtStk> |

    Examples:
      | referenceIdContexte                | quantite | articleId | articleCode | articleDesignation | typeMvtStk     | sourceMvtStk         |
      | create-correction-pos-scenario-1.1 | 15       | 1         | ART001      | Ordinateur Dell    | CORRECTION_POS | COMMANDE_FOURNISSEUR |
      | create-correction-pos-scenario-1.2 | 8        | 2         | ART002      | Souris Logitech    | CORRECTION_POS | COMMANDE_FOURNISSEUR |