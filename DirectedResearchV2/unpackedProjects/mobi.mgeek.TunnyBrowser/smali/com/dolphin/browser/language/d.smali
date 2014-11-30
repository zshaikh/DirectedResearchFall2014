.class Lcom/dolphin/browser/language/d;
.super Ljava/lang/Object;
.source "LanguageItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/res/Configuration;

.field final synthetic b:Ljava/util/Locale;

.field final synthetic c:Landroid/content/res/Resources;

.field final synthetic d:Lcom/dolphin/browser/language/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/language/b;Landroid/content/res/Configuration;Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/language/d;->d:Lcom/dolphin/browser/language/b;

    iput-object p2, p0, Lcom/dolphin/browser/language/d;->a:Landroid/content/res/Configuration;

    iput-object p3, p0, Lcom/dolphin/browser/language/d;->b:Ljava/util/Locale;

    iput-object p4, p0, Lcom/dolphin/browser/language/d;->c:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/language/d;->a:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/dolphin/browser/language/d;->b:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/language/d;->c:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/dolphin/browser/language/d;->a:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 98
    return-void
.end method
