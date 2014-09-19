.class Lcom/fusepowered/fuseapi/FuseAPI$PostTask;
.super Landroid/os/AsyncTask;
.source "FuseAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/fuseapi/FuseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/fuseapi/FuseAPI;


# direct methods
.method private constructor <init>(Lcom/fusepowered/fuseapi/FuseAPI;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$PostTask;->this$0:Lcom/fusepowered/fuseapi/FuseAPI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$PostTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 162
    sget-object v0, Lcom/fusepowered/fuseapi/FuseAPI;->mInterstitial:Lcom/fusepowered/m2/m2l/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubInterstitial;->load()V

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method
