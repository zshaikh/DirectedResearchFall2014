.class Lcom/dolphin/browser/preload/i;
.super Ljava/lang/Object;
.source "DataConfiguration.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/preload/f;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/preload/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dolphin/browser/preload/i;->a:Lcom/dolphin/browser/preload/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/dolphin/browser/preload/i;->b:Ljava/lang/String;

    .line 392
    iput-object p3, p0, Lcom/dolphin/browser/preload/i;->c:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/preload/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/preload/i;->c:Ljava/lang/String;

    return-object v0
.end method
