.class abstract Lcom/flurry/android/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final H:Ljava/lang/String;

.field private final M:Lcom/flurry/android/AdUnit;


# direct methods
.method public constructor <init>(Lcom/flurry/android/AdUnit;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/flurry/android/bf;->M:Lcom/flurry/android/AdUnit;

    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flurry/android/bf;->H:Ljava/lang/String;

    .line 19
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final E()Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/android/bf;->M:Lcom/flurry/android/AdUnit;

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/android/bf;->H:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end method
