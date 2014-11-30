.class Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;
.super Ljava/lang/Object;
.source "ApplifierImpactWebData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactCancelUrlLoaderRunner"
.end annotation


# instance fields
.field private _loader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

.field final synthetic this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;


# direct methods
.method public constructor <init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 1
    .param p2, "loader"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->_loader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 607
    iput-object p2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->_loader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 608
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;->_loader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling urlLoader got exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
