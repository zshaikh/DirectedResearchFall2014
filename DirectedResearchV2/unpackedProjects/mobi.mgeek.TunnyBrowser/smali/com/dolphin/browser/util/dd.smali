.class Lcom/dolphin/browser/util/dd;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Lcom/dolphin/browser/util/Tracker$Priority;

.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;Z)V
    .locals 0

    .prologue
    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    iput-object p1, p0, Lcom/dolphin/browser/util/dd;->a:Ljava/lang/String;

    .line 1465
    iput-object p2, p0, Lcom/dolphin/browser/util/dd;->b:Ljava/lang/String;

    .line 1466
    iput-object p3, p0, Lcom/dolphin/browser/util/dd;->c:Ljava/lang/String;

    .line 1467
    iput p4, p0, Lcom/dolphin/browser/util/dd;->d:I

    .line 1468
    iput-object p5, p0, Lcom/dolphin/browser/util/dd;->e:Lcom/dolphin/browser/util/Tracker$Priority;

    .line 1469
    iput-boolean p6, p0, Lcom/dolphin/browser/util/dd;->f:Z

    .line 1470
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/dolphin/browser/util/dd;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/util/dd;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/util/dd;->c:Ljava/lang/String;

    iget v3, p0, Lcom/dolphin/browser/util/dd;->d:I

    iget-object v4, p0, Lcom/dolphin/browser/util/dd;->e:Lcom/dolphin/browser/util/Tracker$Priority;

    iget-boolean v5, p0, Lcom/dolphin/browser/util/dd;->f:Z

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;Z)V

    .line 1474
    return-void
.end method
