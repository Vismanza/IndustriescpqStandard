cd ../vlocity/FlexCard
sed -i -e 's/"VlocityRecordSObjectType": "%vlocity_namespace%__VlocityCard__c"/"VlocityRecordSObjectType": "OmniUiCard"/g' **/*.json
sed -i -e 's/"VlocityRecordSourceKey": "%vlocity_namespace%__VlocityCard__c/"VlocityRecordSourceKey": "OmniUiCard/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__Version__c"/"VersionNumber"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__Definition__c"/"PropertySetConfig"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__Description__c"/"Description"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__IsChildCard__c": true/"OmniUiCardType": "Child"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__GlobalKey__c"/"OmniUiCardKey"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__Author__c"/"AuthorName"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__Styles__c"/"StylingConfiguration"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__SampleData__c"/"SampleDataSourceResponse"/g' **/*.json
sed -i -e 's/"%vlocity_namespace%__Datasource__c"/"DataSourceConfig"/g' **/*.json
rm **/*.json-e