.class Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;
.super Ljava/lang/Object;
.source "WebViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->a:I

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/adtracker/androidsdk/impl/net/WebViewLoader$a;->b:Ljava/lang/String;

    .line 275
    return-void
.end method
