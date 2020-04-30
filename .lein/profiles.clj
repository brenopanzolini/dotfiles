{:user
 {:dependencies        [[cljdev "0.8.0"]]
  :injections          []
  :repositories        [["central"  {:url "https://repo1.maven.org/maven2/"
                                     :snapshots false}]
                        ["clojars"  {:url "https://clojars.org/repo/"}]]
  :plugin-repositories []
  :plugins             [[s3-wagon-private "1.3.1" :upgrade false]
                        [lein-ancient "0.6.15"]]}
 :repl {:plugins      [[cider/cider-nrepl "0.21.1"]
                       [refactor-nrepl "2.4.0"]
                       [com.billpiel/sayid "0.0.17"]]
        :dependencies [[nrepl "0.6.0"]
                       [mvxcvi/puget "1.1.1"]]
        :repl-options {:timeout 120000
                       :nrepl-middleware [refactor-nrepl.middleware/wrap-refactor
                                          com.billpiel.sayid.nrepl-middleware/wrap-sayid]}}}
