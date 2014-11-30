.class public Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;
.super Ljava/lang/Object;
.source "GooglePlusAuthRequest.java"


# instance fields
.field public code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public redirectURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;->code:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;->redirectURI:Ljava/lang/String;

    .line 23
    return-void
.end method
