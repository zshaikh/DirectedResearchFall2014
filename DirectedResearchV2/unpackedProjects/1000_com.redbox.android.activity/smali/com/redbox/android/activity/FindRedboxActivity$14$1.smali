.class Lcom/redbox/android/activity/FindRedboxActivity$14$1;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity$14;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

.field private final synthetic val$json:Lorg/json/JSONObject;

.field private final synthetic val$sucess:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity$14;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    iput-object p2, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->val$sucess:Ljava/lang/String;

    iput-object p3, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->val$json:Lorg/json/JSONObject;

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x3

    .line 905
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->val$sucess:Ljava/lang/String;

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 906
    const-string v5, "Geocoding Sucess"

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    :try_start_0
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->val$json:Lorg/json/JSONObject;

    .line 909
    const-string v6, "results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 910
    .local v4, "result":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    .line 911
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 910
    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 913
    .local v3, "output":Lorg/json/JSONObject;
    const-string v5, "geometry"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 914
    const-string v6, "location"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 915
    const-string v6, "lat"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "latitude":Ljava/lang/String;
    const-string v5, "geometry"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 918
    const-string v6, "location"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 919
    const-string v6, "lng"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, "longitude":Ljava/lang/String;
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$14;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    # invokes: Lcom/redbox/android/activity/FindRedboxActivity;->loadNearbyKiosks(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v1, v2}, Lcom/redbox/android/activity/FindRedboxActivity;->access$0(Lcom/redbox/android/activity/FindRedboxActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v1    # "latitude":Ljava/lang/String;
    .end local v2    # "longitude":Ljava/lang/String;
    .end local v3    # "output":Lorg/json/JSONObject;
    .end local v4    # "result":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 929
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 931
    const-string v5, "Error parsing Geocode points"

    .line 930
    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$14;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 933
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$14;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    const-string v6, "Address Lookup Failed"

    iput-object v6, v5, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    .line 934
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$14;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    goto :goto_0

    .line 937
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v5, "Geocoding Failed"

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$14;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 939
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$14;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    const-string v6, "Address Lookup Failed"

    iput-object v6, v5, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    .line 940
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$14$1;->this$1:Lcom/redbox/android/activity/FindRedboxActivity$14;

    # getter for: Lcom/redbox/android/activity/FindRedboxActivity$14;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;
    invoke-static {v5}, Lcom/redbox/android/activity/FindRedboxActivity$14;->access$0(Lcom/redbox/android/activity/FindRedboxActivity$14;)Lcom/redbox/android/activity/FindRedboxActivity;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    goto :goto_0
.end method
