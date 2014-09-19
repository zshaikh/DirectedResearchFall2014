.class Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;
.super Ljava/lang/Object;
.source "ApplifierImpactWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactJavascriptRunner"
.end annotation


# instance fields
.field private _jsString:Ljava/lang/String;

.field final synthetic this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;


# direct methods
.method public constructor <init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "jsString"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;->_jsString:Ljava/lang/String;

    .line 347
    iput-object p2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;->_jsString:Ljava/lang/String;

    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;->_jsString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;

    iget-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView$ApplifierImpactJavascriptRunner;->_jsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error while processing JavaScriptString!"

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Could not process JavaScript, the string is NULL"

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
