package org.sggw.dnaadmin;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

@Controller("/dna")
public class DnaDataController {
    @Get(produces = MediaType.APPLICATION_JSON)
    public HttpResponse<DnaData> getDna() {
        return HttpResponse.ok(new DnaData("some name", 1));
    }
}

record DnaData(@JsonProperty("name") String name, @JsonProperty("id") int id) {}