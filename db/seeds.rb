# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# db/seeds.rb
Question.destroy_all

questions = [
  # 🦕 Easy (10)
  { category: "dinosaurs", difficulty: "easy",
    prompt: "Which dinosaur had three horns on its face?",
    choices: ["Stegosaurus", "Triceratops", "Velociraptor", "Brachiosaurus"],
    answer_index: 1 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "Which dinosaur’s name means 'swift thief'?",
    choices: ["Tyrannosaurus Rex", "Velociraptor", "Ankylosaurus", "Diplodocus"],
    answer_index: 1 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "What does the word 'dinosaur' mean?",
    choices: ["Terrible lizard", "Ancient bird", "Giant dragon", "Stone reptile"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "Which dinosaur had a long neck and ate plants?",
    choices: ["Velociraptor", "Brachiosaurus", "Spinosaurus", "Allosaurus"],
    answer_index: 1 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "What period did Tyrannosaurus Rex live in?",
    choices: ["Triassic", "Jurassic", "Cretaceous", "Permian"],
    answer_index: 2 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "Which dinosaur is known for the plates on its back?",
    choices: ["Stegosaurus", "Triceratops", "Iguanodon", "Pachycephalosaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "What kind of food did herbivorous dinosaurs eat?",
    choices: ["Meat", "Fish", "Plants", "Insects"],
    answer_index: 2 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "Which dinosaur had a duck-billed mouth?",
    choices: ["Parasaurolophus", "Hadrosaurus", "Pachycephalosaurus", "Compsognathus"],
    answer_index: 1 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "Which dinosaur was the largest meat-eater discovered so far?",
    choices: ["Spinosaurus", "Allosaurus", "Tyrannosaurus Rex", "Carnotaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "easy",
    prompt: "Which era are dinosaurs most associated with?",
    choices: ["Paleozoic", "Mesozoic", "Cenozoic", "Proterozoic"],
    answer_index: 1 },

  # 🦖 Medium (10)
  { category: "dinosaurs", difficulty: "medium",
    prompt: "Which dinosaur likely had feathers and was closely related to birds?",
    choices: ["Velociraptor", "Triceratops", "Brachiosaurus", "Ankylosaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "Which dinosaur had a massive sail-like structure on its back?",
    choices: ["Spinosaurus", "Iguanodon", "Diplodocus", "Carnotaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "What’s the main difference between Stegosaurus and Ankylosaurus?",
    choices: ["Tail club", "Head crest", "Horn count", "Diet"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "How did paleontologists learn about dinosaur skin texture?",
    choices: ["Fossilized skin impressions", "DNA samples", "Amber fossils", "Rock carvings"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "Which dinosaur had a hollow crest used for sound resonance?",
    choices: ["Parasaurolophus", "Triceratops", "Irritator", "Stegosaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "What caused the mass extinction that ended the age of dinosaurs?",
    choices: ["Volcanic eruptions", "Meteor impact", "Global cooling", "Magnetic pole shift"],
    answer_index: 1 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "What is a theropod?",
    choices: ["A plant-eating dinosaur", "A flying reptile", "A two-legged carnivorous dinosaur", "A sea reptile"],
    answer_index: 2 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "Which dinosaur had armor plates and a clubbed tail?",
    choices: ["Ankylosaurus", "Stegosaurus", "Corythosaurus", "Protoceratops"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "What does the name 'Archaeopteryx' mean?",
    choices: ["Ancient wing", "Feathered hunter", "First bird", "Primitive reptile"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "medium",
    prompt: "Which period came first in the Mesozoic Era?",
    choices: ["Jurassic", "Triassic", "Cretaceous", "Paleozoic"],
    answer_index: 1 },

  # 🧬 Hard (10)
  { category: "dinosaurs", difficulty: "hard",
    prompt: "What feature of dinosaur bones helps scientists determine their growth rates?",
    choices: ["Growth rings", "Fossil color", "Density", "Length"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which dinosaur’s fossils were first mistaken for a giant lizard in 1824?",
    choices: ["Megalosaurus", "Iguanodon", "Hylaeosaurus", "Cetiosaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which continent has yielded the most diverse range of dinosaur fossils?",
    choices: ["Asia", "North America", "South America", "Africa"],
    answer_index: 1 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which dinosaur is believed to have hunted in packs based on trackway evidence?",
    choices: ["Deinonychus", "Spinosaurus", "Allosaurus", "Baryonyx"],
    answer_index: 2 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which fossil discovery helped confirm that birds evolved from dinosaurs?",
    choices: ["Archaeopteryx", "Compsognathus", "Pteranodon", "Protoceratops"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which late Jurassic dinosaur was one of the first known sauropods?",
    choices: ["Cetiosaurus", "Apatosaurus", "Diplodocus", "Camarasaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which dinosaur had the largest known skull among terrestrial carnivores?",
    choices: ["Spinosaurus", "Giganotosaurus", "Tyrannosaurus Rex", "Mapusaurus"],
    answer_index: 1 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "What method is primarily used to determine the age of dinosaur fossils?",
    choices: ["Radiometric dating", "Carbon dating", "Stratigraphy only", "Tree-ring comparison"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which dinosaur’s name means 'thick-headed lizard'?",
    choices: ["Pachycephalosaurus", "Ankylosaurus", "Plateosaurus", "Kentrosaurus"],
    answer_index: 0 },

  { category: "dinosaurs", difficulty: "hard",
    prompt: "Which dinosaur likely had the strongest bite force ever measured?",
    choices: ["Tyrannosaurus Rex", "Giganotosaurus", "Spinosaurus", "Ceratosaurus"],
    answer_index: 0 }
]

Question.create!(questions)
puts "🌋 Seeded #{Question.count} dinosaur questions!"