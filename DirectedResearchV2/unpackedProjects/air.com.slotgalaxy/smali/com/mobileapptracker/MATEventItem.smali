.class public Lcom/mobileapptracker/MATEventItem;
.super Ljava/lang/Object;


# instance fields
.field public attribute_sub1:Ljava/lang/String;

.field public attribute_sub2:Ljava/lang/String;

.field public attribute_sub3:Ljava/lang/String;

.field public attribute_sub4:Ljava/lang/String;

.field public attribute_sub5:Ljava/lang/String;

.field public itemname:Ljava/lang/String;

.field public quantity:I

.field public revenue:D

.field public unitPrice:D


# direct methods
.method public constructor <init>(Ljava/lang/String;IDD)V
    .locals 4
    .param p1, "itemname"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "unitPrice"    # D
    .param p5, "revenue"    # D

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobileapptracker/MATEventItem;->quantity:I

    iput-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->unitPrice:D

    iput-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->revenue:D

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub1:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub2:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub3:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub4:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub5:Ljava/lang/String;

    iput-object p1, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    iput p2, p0, Lcom/mobileapptracker/MATEventItem;->quantity:I

    iput-wide p3, p0, Lcom/mobileapptracker/MATEventItem;->unitPrice:D

    iput-wide p5, p0, Lcom/mobileapptracker/MATEventItem;->revenue:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemname"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "unitPrice"    # D
    .param p5, "revenue"    # D
    .param p7, "att1"    # Ljava/lang/String;
    .param p8, "att2"    # Ljava/lang/String;
    .param p9, "att3"    # Ljava/lang/String;
    .param p10, "att4"    # Ljava/lang/String;
    .param p11, "att5"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobileapptracker/MATEventItem;->quantity:I

    iput-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->unitPrice:D

    iput-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->revenue:D

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub1:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub2:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub3:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub4:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub5:Ljava/lang/String;

    iput-object p1, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    iput p2, p0, Lcom/mobileapptracker/MATEventItem;->quantity:I

    iput-wide p3, p0, Lcom/mobileapptracker/MATEventItem;->unitPrice:D

    iput-wide p5, p0, Lcom/mobileapptracker/MATEventItem;->revenue:D

    iput-object p7, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub1:Ljava/lang/String;

    iput-object p8, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub2:Ljava/lang/String;

    iput-object p9, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub3:Ljava/lang/String;

    iput-object p10, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub4:Ljava/lang/String;

    iput-object p11, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemname"    # Ljava/lang/String;
    .param p2, "att1"    # Ljava/lang/String;
    .param p3, "att2"    # Ljava/lang/String;
    .param p4, "att3"    # Ljava/lang/String;
    .param p5, "att4"    # Ljava/lang/String;
    .param p6, "att5"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobileapptracker/MATEventItem;->quantity:I

    iput-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->unitPrice:D

    iput-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->revenue:D

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub1:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub2:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub3:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub4:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub5:Ljava/lang/String;

    iput-object p1, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub1:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub2:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub3:Ljava/lang/String;

    iput-object p5, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub4:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "item"

    iget-object v2, p0, Lcom/mobileapptracker/MATEventItem;->itemname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "quantity"

    iget v2, p0, Lcom/mobileapptracker/MATEventItem;->quantity:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unit_price"

    iget-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->unitPrice:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "revenue"

    iget-wide v2, p0, Lcom/mobileapptracker/MATEventItem;->revenue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub1:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "attribute_sub1"

    iget-object v2, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub2:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "attribute_sub2"

    iget-object v2, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub3:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "attribute_sub3"

    iget-object v2, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub4:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "attribute_sub4"

    iget-object v2, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub5:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "attribute_sub5"

    iget-object v2, p0, Lcom/mobileapptracker/MATEventItem;->attribute_sub5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
