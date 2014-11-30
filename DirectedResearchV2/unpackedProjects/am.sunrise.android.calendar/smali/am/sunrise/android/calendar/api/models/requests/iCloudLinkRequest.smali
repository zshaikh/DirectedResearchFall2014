.class public Lam/sunrise/android/calendar/api/models/requests/iCloudLinkRequest;
.super Ljava/lang/Object;
.source "iCloudLinkRequest.java"


# instance fields
.field authToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mmeAuthToken"
    .end annotation
.end field

.field userEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lam/sunrise/android/calendar/api/models/requests/iCloudLinkRequest;->userId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lam/sunrise/android/calendar/api/models/requests/iCloudLinkRequest;->userEmail:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lam/sunrise/android/calendar/api/models/requests/iCloudLinkRequest;->authToken:Ljava/lang/String;

    .line 27
    return-void
.end method
