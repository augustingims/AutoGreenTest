Feature: Correction négative de stock
  En tant que entreprise
  Je veux enregistrer une correction négative de stock

  Scenario Outline: 1.0 création d'une correction négative de stock
    Given les informations du mouvement de stock à "créer" avec "<referenceIdContexte>" sont
      | quantite   | articleId   | articleCode   | articleDesignation   | typeMvtStk   | sourceMvtStk   |
      | <quantite> | <articleId> | <articleCode> | <articleDesignation> | <typeMvtStk> | <sourceMvtStk> |
    When "créer" le mouvement de stock avec "<referenceIdContexte>"
    Then le mouvement de stock est "créé" avec "<referenceIdContexte>"
      | quantite   | articleId   | articleCode   | articleDesignation   | typeMvtStk   | sourceMvtStk   |
      | <quantite> | <articleId> | <articleCode> | <articleDesignation> | <typeMvtStk> | <sourceMvtStk> |

    Examples:
      | referenceIdContexte                | quantite | articleId | articleCode | articleDesignation | typeMvtStk     | sourceMvtStk |
      | create-correction-neg-scenario-1.1 | 3        | 1         | ART001      | Ordinateur Dell    | CORRECTION_NEG | VENTE        |
      | create-correction-neg-scenario-1.2 | 5        | 2         | ART002      | Souris Logitech    | CORRECTION_NEG | VENTE        |