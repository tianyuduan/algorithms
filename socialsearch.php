<?php

$configuration->show_sources = 'all';
      $configuration->pretty = true;


      // http://api.pipl.com/search/?first_name=Clark&last_name=Kent&email=clark.kent@example.com&key=9c9nvo6cbpdhfhrotwqy1pwa
      //returned a fat json response

       $fields = array(new \PiplApi_Address(array("country" => "US",
                                               "state" => "KS", "city" => "Metropolis",
                                               "street" => "Hikory Lane", "zipcode" => 66605)),

                       new \PiplApi_Name(array("first" => "Clark",
                                               "middle" => "Joseph", "last" => "Kent",
                           )),

                       new \PiplApi_Job(array("title" => "Field Reporter")),
       );
       $person = new \PiplApi_Person($fields);
       $request = new \PiplApi_SearchAPIRequest(array('person' => $person), $configuration);

      try {
          $response = $request->send();

          var_dump($response);
          die();

      } catch (PiplApi_SearchAPIError $e) {
          print $e->getMessage();
      }

      $response = $request->send();

       var_dump($response);
       die();

      var_dump($response->group_sources_by_domain()['linkedin.com'][0]->origin_url);
      var_dump($response->group_sources_by_domain()['facebook.com'][0]->origin_url);
      var_dump($response->group_sources_by_domain())
      var_dump($response->url()->url);
       die();

 ?>
