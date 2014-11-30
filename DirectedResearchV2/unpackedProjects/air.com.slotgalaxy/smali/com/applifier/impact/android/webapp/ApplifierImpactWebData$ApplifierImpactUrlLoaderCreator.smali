.class Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
.super Ljava/lang/Object;
.source "ApplifierImpactWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactUrlLoaderCreator"
.end annotation


# instance fields
.field private _queryParams:Ljava/lang/String;

.field private _requestMethod:Ljava/lang/String;

.field private _requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field private _retries:I

.field private _url:Ljava/lang/String;

.field final synthetic this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;


# direct methods
.method public constructor <init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V
    .locals 1
    .param p2, "urlPart1"    # Ljava/lang/String;
    .param p3, "urlPart2"    # Ljava/lang/String;
    .param p4, "requestMethod"    # Ljava/lang/String;
    .param p5, "requestType"    # Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .param p6, "retries"    # I

    .prologue
    const/4 v0, 0x0

    .line 586
    iput-object p1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_url:Ljava/lang/String;

    .line 581
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    .line 582
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    .line 583
    iput-object v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_retries:I

    .line 587
    iput-object p2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_url:Ljava/lang/String;

    .line 588
    iput-object p3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    .line 589
    iput-object p4, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    .line 590
    iput-object p5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 591
    iput p6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_retries:I

    .line 592
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 594
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    iget-object v2, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_queryParams:Ljava/lang/String;

    iget-object v4, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_requestMethod:Ljava/lang/String;

    iget-object v5, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_requestType:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    iget v6, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_retries:I

    invoke-direct/range {v0 .. v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;-><init>(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 595
    .local v0, "loader":Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    iget v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->_retries:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 598
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    # invokes: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->addLoader(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    invoke-static {v1, v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$0(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;->this$0:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    # invokes: Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->startNextLoader()V
    invoke-static {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->access$1(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;)V

    .line 601
    return-void
.end method
