.class Lcom/sgn/ratings/Ratings$3;
.super Ljava/lang/Object;
.source "Ratings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sgn/ratings/Ratings;->showRateDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sgn/ratings/Ratings;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sgn/ratings/Ratings;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sgn/ratings/Ratings$3;->this$0:Lcom/sgn/ratings/Ratings;

    iput-object p2, p0, Lcom/sgn/ratings/Ratings$3;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sgn/ratings/Ratings$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v2, p0, Lcom/sgn/ratings/Ratings$3;->val$mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sgn/ratings/Ratings$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".appirater"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dontshow"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    iget-object v2, p0, Lcom/sgn/ratings/Ratings$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 229
    return-void
.end method
