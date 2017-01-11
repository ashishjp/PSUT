$project = (Split-Path -Parent $MyInvocation.MyCommand.Path).Replace(".Tests", "")
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$project\$sut"

Describe "MyFirstRunBook" {
	Context "Exists" {
		It "Runs" {
			MyFirstRunBook -name "Ashish" | should be "Hello Ashish"
		}
	}
}