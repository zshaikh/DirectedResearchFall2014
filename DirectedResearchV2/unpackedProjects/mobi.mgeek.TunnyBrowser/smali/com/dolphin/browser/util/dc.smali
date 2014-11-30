.class final Lcom/dolphin/browser/util/dc;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/dolphin/browser/util/Tracker$Priority;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V
    .locals 0

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/dolphin/browser/util/dc;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dolphin/browser/util/dc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/util/dc;->c:Ljava/lang/String;

    iput p4, p0, Lcom/dolphin/browser/util/dc;->d:I

    iput-object p5, p0, Lcom/dolphin/browser/util/dc;->e:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/dolphin/browser/util/dc;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/util/dc;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/util/dc;->c:Ljava/lang/String;

    iget v3, p0, Lcom/dolphin/browser/util/dc;->d:I

    iget-object v4, p0, Lcom/dolphin/browser/util/dc;->e:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1620
    return-void
.end method
