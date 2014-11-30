.class Lcom/dolphin/browser/theme/ay;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/dolphin/browser/theme/d/h;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ar;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/dolphin/browser/theme/ay;->a:Lcom/dolphin/browser/theme/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/io/File;)Lcom/dolphin/browser/theme/b/a;
    .locals 1

    .prologue
    .line 1356
    new-instance v0, Lcom/dolphin/browser/theme/b/e;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/theme/b/e;-><init>(ILjava/io/File;)V

    return-object v0
.end method
