.class Lcom/redbox/android/activity/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LoginActivity;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LoginActivity;

.field private final synthetic val$mustChangeFinal:Z


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LoginActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    iput-boolean p2, p0, Lcom/redbox/android/activity/LoginActivity$4;->val$mustChangeFinal:Z

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 197
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/redbox/android/activity/LoginActivity;->removeDialog(I)V

    .line 198
    iget-boolean v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->val$mustChangeFinal:Z

    if-eqz v7, :cond_0

    .line 199
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    .line 200
    const-class v8, Lcom/redbox/android/activity/ChangePasswordActivity;

    .line 199
    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v1, "i":Landroid/content/Intent;
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v7, v1}, Lcom/redbox/android/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/redbox/android/activity/LoginActivity;->finish()V

    .line 204
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    sput-boolean v9, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 205
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-static {v7}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v7

    .line 206
    invoke-virtual {v7, v9}, Lcom/redbox/android/adapter/LocalDataStore;->setLogInState(Z)V

    .line 207
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/redbox/android/activity/LoginActivity;->finish()V

    .line 208
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/redbox/android/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 209
    const-string v8, "nextactivity.class"

    .line 208
    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 210
    .local v0, "cls":Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 211
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-direct {v1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/redbox/android/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 213
    const-string v8, "nextactivity.params"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 212
    check-cast v4, Ljava/util/HashMap;

    .line 214
    .local v4, "params":Ljava/util/HashMap;
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 215
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 216
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 215
    if-nez v7, :cond_2

    .line 221
    iget-object v7, p0, Lcom/redbox/android/activity/LoginActivity$4;->this$0:Lcom/redbox/android/activity/LoginActivity;

    invoke-virtual {v7, v1}, Lcom/redbox/android/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "params":Ljava/util/HashMap;
    :cond_1
    return-void

    .line 217
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "iter":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "params":Ljava/util/HashMap;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 218
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 219
    .local v6, "type":Ljava/lang/Object;
    check-cast v6, Ljava/io/Serializable;

    .end local v6    # "type":Ljava/lang/Object;
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method
