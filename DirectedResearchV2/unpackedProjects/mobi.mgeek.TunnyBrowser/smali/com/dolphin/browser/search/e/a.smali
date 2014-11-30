.class public Lcom/dolphin/browser/search/e/a;
.super Ljava/lang/Object;
.source "SearchEngineEntryTrackManager.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "other"

    iput-object v0, p0, Lcom/dolphin/browser/search/e/a;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/search/e/b;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/dolphin/browser/search/e/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/search/e/a;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/dolphin/browser/search/e/c;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/search/e/a;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/search/e/a;->a:Ljava/lang/String;

    return-object v0
.end method
