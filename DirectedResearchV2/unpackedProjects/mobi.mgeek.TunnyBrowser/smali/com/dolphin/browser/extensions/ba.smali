.class public Lcom/dolphin/browser/extensions/ba;
.super Ljava/lang/Object;
.source "PluginManager.java"


# instance fields
.field private a:[Lcom/dolphin/browser/extensions/n;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Lcom/dolphin/browser/extensions/n;)V
    .locals 0

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p2, p0, Lcom/dolphin/browser/extensions/ba;->a:[Lcom/dolphin/browser/extensions/n;

    .line 963
    iput-object p1, p0, Lcom/dolphin/browser/extensions/ba;->b:Ljava/lang/String;

    .line 964
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/ba;)[Lcom/dolphin/browser/extensions/n;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ba;->a:[Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method


# virtual methods
.method public a()[Lcom/dolphin/browser/extensions/n;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ba;->a:[Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ba;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ba;->a:[Lcom/dolphin/browser/extensions/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/ba;->a:[Lcom/dolphin/browser/extensions/n;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ba;->a:[Lcom/dolphin/browser/extensions/n;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
