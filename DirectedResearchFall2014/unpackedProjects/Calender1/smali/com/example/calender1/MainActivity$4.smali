.class Lcom/example/calender1/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/calender1/MainActivity;->setListenerOnSelectedItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/calender1/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/calender1/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/calender1/MainActivity$4;->this$0:Lcom/example/calender1/MainActivity;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .local v3, date:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, startTime:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, endTime:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, category:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 208
    .local v4, description:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    move-object/from16 v11, p2

    check-cast v11, Landroid/widget/TextView;

    .line 209
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    .line 208
    invoke-direct {v8, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v8, st:Ljava/util/StringTokenizer;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_0

    .line 242
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    .end local v7           #i:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 243
    const-class v12, Lcom/example/calender1/EditEventActivity;

    .line 242
    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v7, i:Landroid/content/Intent;
    const-string v11, "Category"

    invoke-virtual {v7, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v11, "Date"

    invoke-virtual {v7, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v11, "StartTime"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v11, "EndTime"

    invoke-virtual {v7, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v11, "Title"

    invoke-virtual {v7, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v11, "Description"

    invoke-virtual {v7, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v11, "id"

    move-wide/from16 v0, p4

    invoke-virtual {v7, v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    iget-object v11, p0, Lcom/example/calender1/MainActivity$4;->this$0:Lcom/example/calender1/MainActivity;

    invoke-virtual {v11, v7}, Lcom/example/calender1/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v7           #i:Landroid/content/Intent;
    :goto_1
    return-void

    .line 212
    .local v7, i:I
    :cond_0
    if-nez v7, :cond_1

    .line 213
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 214
    const-string v12, "Categry: "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 211
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v11, 0x1

    if-ne v7, v11, :cond_2

    .line 217
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    const-string v12, "Date: "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 219
    goto :goto_2

    :cond_2
    const/4 v11, 0x2

    if-ne v7, v11, :cond_3

    .line 220
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 221
    const-string v12, "Start Time: "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 222
    goto :goto_2

    :cond_3
    const/4 v11, 0x3

    if-ne v7, v11, :cond_4

    .line 223
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 224
    const-string v12, "End Time: "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 225
    goto :goto_2

    :cond_4
    const/4 v11, 0x4

    if-ne v7, v11, :cond_5

    .line 226
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 227
    const-string v12, "Title: "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 228
    goto :goto_2

    :cond_5
    const/4 v11, 0x5

    if-ne v7, v11, :cond_6

    .line 229
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 230
    const-string v12, "Description: "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 233
    goto :goto_2

    .line 234
    :cond_6
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    goto :goto_2

    .line 260
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 261
    .local v6, ex:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/example/calender1/MainActivity$4;->this$0:Lcom/example/calender1/MainActivity;

    invoke-virtual {v11}, Lcom/example/calender1/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    .line 262
    const/4 v13, 0x1

    .line 261
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 262
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
