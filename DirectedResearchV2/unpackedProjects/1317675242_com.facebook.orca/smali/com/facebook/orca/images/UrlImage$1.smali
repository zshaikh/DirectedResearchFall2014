.class Lcom/facebook/orca/images/UrlImage$1;
.super Ljava/lang/Object;
.source "UrlImage.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/UrlImage;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/UrlImage;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage$1;->a:Lcom/facebook/orca/images/UrlImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage$1;->a:Lcom/facebook/orca/images/UrlImage;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/facebook/orca/images/UrlImage;->a(Lcom/facebook/orca/images/UrlImage;Landroid/graphics/drawable/Drawable;)V

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method
