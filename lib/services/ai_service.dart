class AiService {
  static final Map<String, Map<String, String>> _faqs = {
    'fr': {
      "qu'est-ce que la drépanocytose": "La drépanocytose est une maladie héréditaire de l'hémoglobine provoquant des globules rouges en forme de faucille.",
      "comment prévenir une crise de drépanocytose": "Hydratation, éviter l'exposition au froid, éviter la déshydratation et consulter un médecin pour un suivi régulier.",
      "symptômes de la drépanocytose": "Douleurs articulaires et osseuses, anémie, infections fréquentes, ictère.",
      "qu'est-ce que le diabète": "Le diabète est une maladie chronique caractérisée par une glycémie élevée due à un défaut d'insuline.",
      "prévention du diabète type 2": "Activité physique régulière, alimentation équilibrée, perte de poids si surpoids.",
      "signes d'urgence diabète": "Vomissements persistants, confusion, difficulté à respirer, perte de conscience — consulter en urgence.",
      "qu'est-ce que l'hypertension": "L'hypertension est une pression artérielle élevée de façon chronique, augmentant le risque cardiovasculaire.",
      "traitement hypertension": "Réduction de sel, activité physique, arrêt du tabac, et médicaments prescrits."
    },
    'en': {
      "what is sickle cell disease": "Sickle cell disease is an inherited blood disorder causing misshapen red blood cells.",
      "how to prevent a sickle cell crisis": "Stay hydrated, avoid extreme cold, manage infections and follow medical advice.",
      "sickle cell symptoms": "Pain crises, anemia, infections, jaundice.",
      "what is diabetes": "Diabetes is a chronic condition characterized by high blood sugar levels.",
      "prevent type 2 diabetes": "Regular exercise, healthy diet, weight management.",
      "diabetes emergency signs": "Persistent vomiting, confusion, difficulty breathing, loss of consciousness — seek emergency care.",
      "what is hypertension": "Hypertension is chronically elevated blood pressure, increasing cardiovascular risk.",
      "treating hypertension": "Reduce salt intake, exercise, and take prescribed medications."
    },
    'ln': {
      "nini ezali drépanocytose": "Drépanocytose ezali maladi ya mongongo.",
      "ndenge ya kopekisa crise": "Komela mayi, koboya luzingu ya kali, pe kozwa misala ya dokotera."
    },
    'kg': {
      "di drépanocytose kele nini": "Drépanocytose kele maladi ya nitu.",
      "nkutu ya kupekisa crise": "Mela ma mingi, yiba na kiese."
    }
  };

  static String getAnswer(String question, String lang) {
    final q = question.toLowerCase().trim();
    final map = _faqs[lang] ?? _faqs['fr']!;
    if (map.containsKey(q)) return map[q]!;
    for (final k in map.keys) {
      if (q.contains(k.split(' ').first)) return map[k]!;
    }
    return map.values.first;
  }
}