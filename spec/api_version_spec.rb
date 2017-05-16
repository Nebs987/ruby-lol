require "spec_helper"
require "lol"

include Lol


def check_api_version(klass, version)
  describe klass do
    it "should use API version #{version}" do
      expect(klass.api_version).to eq(version)
    end
  end
end

describe "API Versions" do
  check_api_version(ChampionRequest, "v3")
  check_api_version(ChampionMasteryRequest, "v3")
  check_api_version(LeagueRequest, "v3")
  check_api_version(StaticRequest, "v3")
  check_api_version(LolStatusRequest, "v3")
  check_api_version(MatchRequest, "v3")
  check_api_version(GameRequest, "v1.3")
  check_api_version(MatchListRequest, "v2.2")
  check_api_version(StatsRequest, "v1.3")
  check_api_version(SummonerRequest, "v1.4")
  check_api_version(TeamRequest, "v2.4")
end
