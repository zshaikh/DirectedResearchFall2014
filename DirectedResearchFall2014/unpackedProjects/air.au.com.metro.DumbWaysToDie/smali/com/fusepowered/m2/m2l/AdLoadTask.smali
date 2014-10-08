.class abstract Lcom/fusepowered/m2/m2l/AdLoadTask;
.super Ljava/lang/Object;
.source "AdLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;,
        Lcom/fusepowered/m2/m2l/AdLoadTask$LegacyCustomEventAdLoadTask;,
        Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;
    }
.end annotation


# instance fields
.field mWeakAdViewController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m2/m2l/AdViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/AdViewController;)V
    .locals 1
    .param p1, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask;->mWeakAdViewController:Ljava/lang/ref/WeakReference;

    .line 69
    return-void
.end method

.method static fromHttpResponse(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/AdViewController;)Lcom/fusepowered/m2/m2l/AdLoadTask;
    .locals 1
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "adViewController"    # Lcom/fusepowered/m2/m2l/AdViewController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;-><init>(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/AdViewController;)V

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdLoadTask$TaskExtractor;->extract()Lcom/fusepowered/m2/m2l/AdLoadTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract cleanup()V
.end method

.method abstract execute()V
.end method
