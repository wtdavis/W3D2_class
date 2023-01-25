class Card
    def initialize(face = "_")
        @face = face
        @face_up = false
    end
 
 
    def face
        @face
    end
 
    def face= (str)
        @face = str
    end
 
    def reveal
        @face_up = true
    end
 
 
    def hide
        @face_up = false
    end
 end
 
 