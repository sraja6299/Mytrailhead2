public class UpdatePageLayout_JSON {
	public class QuickActionList {
		public List<QuickActionListItems> quickActionListItems;
	}

	public class LayoutItems_Z {
		public Object width;
		public Object showScrollbars;
		public Object showLabel;
		public Object scontrol;
		public Object reportChartComponent;
		public Object page_x;
		public Object height;
		public Object field;
		public Object emptySpace;
		public String customLink;
		public Object component;
		public Object canvas;
		public Object behavior;
		public Object analyticsCloudComponent;
	}

	public String fullName;
	public SummaryLayout summaryLayout;
	public Boolean showSubmitAndAttachButton;
	public Object showSolutionSection;
	public Boolean showRunAssignmentRulesCheckbox;
	public Object showKnowledgeComponent;
	public Boolean showInteractionLogPanel;
	public Boolean showHighlightsPanel;
	public Boolean showEmailCheckbox;
	public Object runAssignmentRulesDefault;
	public List<String> relatedObjects;
	public List<RelatedLists> relatedLists;
	public RelatedContent relatedContent;
	public QuickActionList quickActionList;
	public PlatformActionList platformActionList;
	public Object multilineLayoutFields;
	public Object miniLayout;
	public List<LayoutSections> layoutSections;
	public Object headers;
	public Object feedLayout;
	public List<String> excludeButtons;
	public Object emailDefault;
	public Object customConsoleComponents;
	public Object customButtons;

	public class RelatedLists {
		public Object sortOrder;
		public Object sortField;
		public String relatedList;
		public List<String> fields;
		public Object excludeButtons;
		public Object customButtons;
	}

	public class SummaryLayout {
		public String summaryLayoutStyle;
		public Object summaryLayoutItems;
		public Object sizeZ;
		public Integer sizeY;
		public Integer sizeX;
		public String masterLabel;
	}

	public class RelatedContentItems {
		public LayoutItem layoutItem;
	}

	public class RelatedContent {
		public List<RelatedContentItems> relatedContentItems;
	}

	public class LayoutItems {
		public Object width;
		public Object showScrollbars;
		public Object showLabel;
		public Object scontrol;
		public Object reportChartComponent;
		public Object page_x;
		public Object height;
		public String field;
		public Object emptySpace;
		public Object customLink;
		public Object component;
		public Object canvas;
		public String behavior;
		public Object analyticsCloudComponent;
	}

	public class PlatformActionList {
		public Object fullName;
		public Object relatedSourceEntity;
		public List<PlatformActionListItems> platformActionListItems;
		public String actionListContext;
	}

	public class LayoutSections {
		public String style;
		public List<LayoutColumns> layoutColumns;
		public String label;
		public Boolean editHeading;
		public Boolean detailHeading;
		public Boolean customLabel;
	}

	public class LayoutItem {
		public Object width;
		public Object showScrollbars;
		public Object showLabel;
		public Object scontrol;
		public Object reportChartComponent;
		public Object page_x;
		public Object height;
		public Object field;
		public Object emptySpace;
		public Object customLink;
		public String component;
		public Object canvas;
		public Object behavior;
		public Object analyticsCloudComponent;
	}

	public class PlatformActionListItems {
		public Object subtype;
		public Integer sortOrder;
		public String actionType;
		public String actionName;
	}

	public class QuickActionListItems {
		public String quickActionName;
	}

	public class LayoutColumns {
		public Object reserved;
		public List<LayoutItems> layoutItems;
	}

	public class LayoutColumns_Z {
		public Object reserved;
		public List<LayoutItems_Z> layoutItems;
	}

	
	public static List<UpdatePageLayout_JSON> parse(String json) {
		return (List<UpdatePageLayout_JSON>) System.JSON.deserialize(json, List<UpdatePageLayout_JSON>.class);
	}
}