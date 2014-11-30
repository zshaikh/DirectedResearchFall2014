.class Lcom/dolphin/browser/theme/aa;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/theme/z;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/dolphin/browser/theme/aa;->b:Lcom/dolphin/browser/theme/z;

    iput-object p2, p0, Lcom/dolphin/browser/theme/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/theme/aa;->b:Lcom/dolphin/browser/theme/z;

    iget-object v0, v0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget-object v1, p0, Lcom/dolphin/browser/theme/aa;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;Ljava/lang/String;)V

    .line 352
    return-void
.end method
