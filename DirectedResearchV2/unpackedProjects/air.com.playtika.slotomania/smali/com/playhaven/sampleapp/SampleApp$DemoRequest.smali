.class public Lcom/playhaven/sampleapp/SampleApp$DemoRequest;
.super Ljava/lang/Object;
.source "SampleApp.java"

# interfaces
.implements Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/SampleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DemoRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;"
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "requestURL"    # Ljava/lang/String;
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->title:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->requestURL:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->contentDescription:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/playhaven/sampleapp/SampleApp$DemoRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->title:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->requestURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp$DemoRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method
