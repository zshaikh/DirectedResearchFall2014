.class Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

.field private final synthetic val$d:Lorg/json/JSONObject;

.field private final synthetic val$msgKeys:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    iput-object p2, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->val$msgKeys:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->val$d:Lorg/json/JSONObject;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;)Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 651
    :try_start_0
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->val$msgKeys:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 654
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->val$d:Lorg/json/JSONObject;

    const-string v4, "msgs"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 656
    .local v2, "msgs":Lorg/json/JSONArray;
    :try_start_1
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 657
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    iput-object v3, v4, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 658
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 659
    const-string v5, "<BR>"

    const-string v6, "\n"

    .line 658
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 660
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 661
    const-string v5, "<UL>"

    const-string v6, ""

    .line 660
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 662
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 663
    const-string v5, "<LI>"

    const-string v6, ""

    .line 662
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 664
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 665
    const-string v5, "</UL>"

    const-string v6, ""

    .line 664
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 666
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 667
    const-string v5, "</LI>"

    const-string v6, ""

    .line 666
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 668
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    const-string v5, "  "

    .line 669
    const-string v6, ""

    .line 668
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 670
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    .line 671
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBox:Landroid/app/AlertDialog;

    .line 672
    new-instance v4, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$1;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$1;-><init>(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 730
    .end local v2    # "msgs":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 682
    .restart local v2    # "msgs":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 683
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    const-string v4, "No error mesage"

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 726
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "msgs":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 727
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 728
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    const-string v4, "Error while reading json of reserve"

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/ReserveActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    invoke-virtual {v4}, Lcom/redbox/android/model/Cart;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "addressTxt":Ljava/lang/String;
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    invoke-virtual {v3}, Lcom/redbox/android/model/Cart;->getMachineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    invoke-virtual {v4}, Lcom/redbox/android/model/Cart;->getMachineName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    invoke-virtual {v4}, Lcom/redbox/android/model/Cart;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 693
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    invoke-virtual {v4}, Lcom/redbox/android/model/Cart;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 694
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    invoke-virtual {v4}, Lcom/redbox/android/model/Cart;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 695
    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    invoke-virtual {v4}, Lcom/redbox/android/model/Cart;->getZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 692
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    .line 698
    const v5, 0x7f05004f

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v8}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    .line 699
    invoke-virtual {v8}, Lcom/redbox/android/model/MovieDetail;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 700
    aput-object v0, v6, v7

    const/4 v7, 0x2

    .line 701
    iget-object v8, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v8}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    .line 702
    invoke-virtual {v8}, Lcom/redbox/android/model/Cart;->getReservationPeriod()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 696
    invoke-virtual {v4, v5, v6}, Lcom/redbox/android/activity/ReserveActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxMsg:Ljava/lang/String;

    .line 703
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    const v5, 0x7f050051

    invoke-virtual {v4, v5}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBoxTitle:Ljava/lang/String;

    .line 704
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    .line 705
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v4}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbox/android/activity/ReserveActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/redbox/android/utils/RBTracker;->setApplication(Landroid/app/Application;)V

    .line 706
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v3

    .line 707
    invoke-virtual {v3, p0}, Lcom/redbox/android/utils/RBTracker;->trackReservationConfirmation(Ljava/lang/Object;)V

    .line 708
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v3}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/redbox/android/activity/ReserveActivity;->alertBox:Landroid/app/AlertDialog;

    .line 709
    new-instance v4, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$2;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$2;-><init>(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
