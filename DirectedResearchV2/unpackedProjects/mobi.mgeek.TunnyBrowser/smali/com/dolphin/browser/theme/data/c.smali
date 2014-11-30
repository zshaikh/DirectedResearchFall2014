.class public Lcom/dolphin/browser/theme/data/c;
.super Lcom/dolphin/browser/theme/data/f;
.source "ApkTheme.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/theme/data/f;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 33
    iput-object p4, p0, Lcom/dolphin/browser/theme/data/c;->t:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/theme/data/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/data/f;-><init>(Lcom/dolphin/browser/theme/data/s;)V

    .line 28
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/c;->t:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/c;->t:Ljava/lang/String;

    return-object v0
.end method
