;; DGO definition file for energy bay level
;; We use the convention of having a longer DGO name for levels without precomputed visibility.

;; name: energybay.gd

;; the actual file name still needs to be 8.3
("ENB.DGO"
 (
  "static-screen.o"
  "energy-bay.go"
  "orb-cache-top-ag.go"
  "race-ring-ag.go"
  ;; "rolling-race-ring.o" ;; might not be needed if already in crescend.gd (also crash the game...)
  ;; "tpage-1313.go" ; water stuff
  ;; "tpage-1315.go" ; water stuff
  ;; "tpage-1314.go" ; water stuff
  ;; "tpage-1312.go" ; water stuff
  ;; "tpage-767.go" ; water stuff
  ;; "water-anim-maincave-ag.go" ; water stuff
  ;; "water-anim-maincave-water-ag.go" ; water stuff
  "water-anim-training-ag.go" ; water stuff
  "energybay-obs.o"
  "energybay-part.o"
  ;; "target-racer-h.o" ; zoomer stuff
  ;; "racer-part.o" ; zoomer stuff
  ;; "racer.o" ; zoomer stuff
  ;; "target-racer.o" ; zoomer stuff
  ;; "racer-states.o" ; zoomer stuff
  ;; "collide-reaction-racer.o" ; zoomer stuff
  "eichar-racer+0-ag.go" ; zoomer stuff
  "blocking-plane.o" ; zoomer stuff
  "ef-plane-ag.go" ; zoomer stuff
  "racer-ag.go" ; zoomer stuff
 ))