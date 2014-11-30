.class Lcom/sgn/ratings/Ratings$1;
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

.field final synthetic val$marketURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sgn/ratings/Ratings;Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sgn/ratings/Ratings$1;->this$0:Lcom/sgn/ratings/Ratings;

    iput-object p2, p0, Lcom/sgn/ratings/Ratings$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sgn/ratings/Ratings$1;->val$marketURL:Ljava/lang/String;

    iput-object p4, p0, Lcom/sgn/ratings/Ratings$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/sgn/ratings/Ratings$1;->val$mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sgn/ratings/Ratings$1;->val$mContext:Landroid/content/Context;

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

    .line 193
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "rateclicked"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    iget-object v2, p0, Lcom/sgn/ratings/Ratings$1;->val$mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/sgn/ratings/Ratings$1;->val$marketURL:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v2, p0, Lcom/sgn/ratings/Ratings$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 199
    return-void
.end method
