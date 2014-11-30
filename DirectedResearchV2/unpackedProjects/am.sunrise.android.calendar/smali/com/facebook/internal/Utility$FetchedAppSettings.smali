.class public Lcom/facebook/internal/Utility$FetchedAppSettings;
.super Ljava/lang/Object;
.source "Utility.java"


# instance fields
.field private supportsAttribution:Z

.field private supportsImplicitLogging:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p1, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution:Z

    .line 78
    iput-boolean p2, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging:Z

    .line 79
    return-void
.end method

.method synthetic constructor <init>(ZZLcom/facebook/internal/Utility$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/Utility$FetchedAppSettings;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public supportsAttribution()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution:Z

    return v0
.end method

.method public supportsImplicitLogging()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
