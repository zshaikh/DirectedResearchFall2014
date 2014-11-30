.class Lcom/dolphin/browser/theme/az;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/theme/ar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/dolphin/browser/theme/az;->b:Lcom/dolphin/browser/theme/ar;

    iput-object p2, p0, Lcom/dolphin/browser/theme/az;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/dolphin/browser/theme/az;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/az;->a:Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/theme/d/j;->a:Lcom/dolphin/browser/theme/d/j;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/ar;Ljava/lang/String;Lcom/dolphin/browser/theme/d/j;)V

    .line 1367
    return-void
.end method
