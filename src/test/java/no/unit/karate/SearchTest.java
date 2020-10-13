package no.unit.karate;

import com.intuit.karate.junit5.Karate; 

class SearchTest {

	@Karate.Test
	Karate testSearch() {
		return Karate.run("search").relativeTo(getClass());
	}
	
}
