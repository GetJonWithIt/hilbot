trainingSetSubjectName = {"A is a set" -> "A", 
   "Let A be a set" -> "A", "Suppose that A is a set" -> "A", 
   "B is a set" -> "B", "Let B be a set" -> "B", 
   "Suppose that B is a set" -> "B", "C is a set" -> "C", 
   "Let C be a set" -> "C", "Suppose that C is a set" -> "C", 
   "A and B are sets" -> "A, B", "Let A and B be sets" -> "A, B", 
   "Suppose that A and B are sets" -> "A, B", 
   "A, B and C are sets" -> "A, B, C", 
   "Let A, B and C be sets" -> "A, B, C", 
   "Suppose that A, B and C are sets" -> "A, B, C", 
   "f is a function" -> "f", "Let f be a function" -> "f", 
   "Suppose that f is a function" -> "f", "g is a function" -> "g", 
   "Let g be a function" -> "g", 
   "Suppose that g is a function" -> "g", "h is a function" -> "h", 
   "Let f be a function" -> "h", 
   "Suppose that h is a function" -> "h", 
   "f and g are functions" -> "f, g", 
   "Let f and g be functions" -> "f, g", 
   "Suppose that f and g are functions" -> "f, g", 
   "f, g and h are functions" -> "f, g, h", 
   "Let f, g and h be functions" -> "f, g, h", 
   "Suppose that f, g and h are functions" -> "f, g, h"};
trainingSetSubjectType = {"A is a set" -> "Set", 
   "Let A be a set" -> "Set", "Suppose that A is a set" -> "Set", 
   "B is a set" -> "Set", "Let B be a set" -> "Set", 
   "Suppose that B is a set" -> "Set", "C is a set" -> "Set", 
   "Let C be a set" -> "Set", "Suppose that C is a set" -> "Set", 
   "f is a function" -> "Function", 
   "Let f be a function" -> "Function", 
   "Suppose that f is a function" -> "Function", 
   "g is a function" -> "Function", 
   "Let g be a function" -> "Function", 
   "Suppose that g is a function" -> "Function", 
   "h is a function" -> "Function", 
   "Let f be a function" -> "Function", 
   "Suppose that h is a function" -> "Function"};
subjectNameClassifier = Classify[trainingSetSubjectName];
subjectTypeClassifier = Classify[trainingSetSubjectType];
interpretText[text_] := 
 isSet[subjectNameClassifier[text]] /; 
  subjectTypeClassifier[text] === "Set"
interpretText[text_] := 
 isFunction[subjectNameClassifier[text]] /; 
  subjectTypeClassifier[text] === "Function"
