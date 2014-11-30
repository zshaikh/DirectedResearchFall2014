.class public Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;
.super Ljava/lang/Object;
.source "SignInUpRequest.java"


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connectionAccessToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;->accessToken:Ljava/lang/String;

    .line 21
    return-void
.end method
