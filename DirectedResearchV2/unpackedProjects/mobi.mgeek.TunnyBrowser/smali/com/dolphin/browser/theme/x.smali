.class Lcom/dolphin/browser/theme/x;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/dolphin/browser/theme/x;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/theme/x;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    .line 267
    return-void
.end method
