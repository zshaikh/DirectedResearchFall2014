.class public Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$RequestTable$Columns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager$RequestTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final FAILURE_COUNT:Ljava/lang/String; = "failure_count"

.field public static final HEADERS_JSON:Ljava/lang/String; = "headers_json"

.field public static final HOST_JSON:Ljava/lang/String; = "host_json"

.field public static final REQUEST_LINE_JSON:Ljava/lang/String; = "request_line_json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
