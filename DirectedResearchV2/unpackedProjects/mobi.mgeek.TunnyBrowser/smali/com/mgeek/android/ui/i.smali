.class Lcom/mgeek/android/ui/i;
.super Ljava/lang/Object;
.source "CrashRestoreView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/mgeek/android/ui/h;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/h;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mgeek/android/ui/i;->c:Lcom/mgeek/android/ui/h;

    iput p2, p0, Lcom/mgeek/android/ui/i;->a:I

    iput-object p3, p0, Lcom/mgeek/android/ui/i;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mgeek/android/ui/i;->c:Lcom/mgeek/android/ui/h;

    iget-object v0, v0, Lcom/mgeek/android/ui/h;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->d(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/mgeek/android/ui/i;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/k;

    iget-object v1, p0, Lcom/mgeek/android/ui/i;->b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/mgeek/android/ui/k;->c:Landroid/graphics/Bitmap;

    .line 187
    iget-object v0, p0, Lcom/mgeek/android/ui/i;->c:Lcom/mgeek/android/ui/h;

    iget-object v0, v0, Lcom/mgeek/android/ui/h;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->g(Lcom/mgeek/android/ui/e;)Lcom/mgeek/android/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgeek/android/ui/l;->notifyDataSetChanged()V

    .line 188
    return-void
.end method
