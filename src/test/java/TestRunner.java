import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate executeTest() {
        return Karate.run("classpath:get-response-tmsandbox.feature").tags("~@ignore").relativeTo(getClass());
    }
}