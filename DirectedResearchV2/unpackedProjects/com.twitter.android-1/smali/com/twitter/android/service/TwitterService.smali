.class public Lcom/twitter/android/service/TwitterService;
.super Landroid/app/Service;


# static fields
.field private static final a:Z

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/LinkedHashMap;

.field private f:Lcom/twitter/android/network/b;

.field private g:Lcom/twitter/android/network/d;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const-string v0, "TwitterService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/service/TwitterService;->a:Z

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "impression"

    aput-object v2, v0, v1

    const-string v1, "url_click"

    aput-object v1, v0, v4

    const-string v1, "profile_image_click"

    aput-object v1, v0, v5

    const-string v1, "screen_name_click"

    aput-object v1, v0, v3

    const-string v1, "hashtag_click"

    aput-object v1, v0, v6

    const-string v1, "user_mention_click"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "view_details"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contributed_by_name_click"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "click"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "footer_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/service/TwitterService;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "REFRESH"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "MARK_TWEETS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "MARK_MESSAGES"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "CLEAN"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "LOGOUT"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "USER_TIMELINE"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "CREATE_FAV"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DESTROY_FAV"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_FAVS"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "RATE_LIMIT"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_LISTS"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_USERS"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_BLOCKING"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "FOLLOW"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "UNFOLLOW"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_MESSAGES"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_SENT_MESSAGES"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_UNREAD"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "NEW_DM"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DESTROY_DM"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "SHORTEN_URL"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_FRIENDSHIP"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_USER"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "TWEET"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "RETWEET"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DESTROY_STATUS"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "CREATE_BLOCK"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "REPORT_SPAM"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DESTROY_BLOCK"

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "CREATE_LIST"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "EDIT_LIST"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DELETE_LIST"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_LIST_TWEETS"

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_LIST_USERS"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "ADD_LIST_USER"

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "REMOVE_LIST_USER"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "IS_LIST_USER"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_TRENDS"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "SEARCH_TWEETS"

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "SEARCH_USERS"

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "UPDATE_PROFILE"

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "REVERSE_GEO"

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "VERIFY"

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "LOGIN"

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "LOG"

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "HOME"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "SAVE_DRAFT"

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DEL_DRAFT"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "SEND_ALL_DRAFTS"

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_SAVED_SEARCHES"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_SLUG"

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_SLUG_USERS"

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_LIST"

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "LOOKUP"

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "SIGNUP"

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "FOLLOW_ALL"

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "CONFIG"

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "UPDATE_SETTINGS"

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_SETTINGS"

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DELETE_DMS"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DECIDER"

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "SAVE_SEARCH"

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DELETE_SEARCH"

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "ACTIVITY"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "FETCH_STORIES"

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "RELATED_RESULTS"

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "GET_USER_RECOMMENDATIONS"

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "EMAIL_AVAILABLE"

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "USERNAME_AVAILABLE"

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "ACTIVITY_SUMMARY"

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "ACTION_MARK_STORIES"

    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    const-string v1, "DISMISS"

    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/twitter/android/service/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/TwitterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->h:Landroid/os/Handler;

    return-void
.end method

.method private a(JLcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 13

    const-string v1, "status_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "impression_id"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(JJZ)V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "favorites"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string v6, "create"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "send_error_codes"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "impression_id"

    invoke-direct {v2, v3, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "include_entities"

    const-string v6, "true"

    invoke-direct {v2, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v6, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v7, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p4

    invoke-static/range {v6 .. v11}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v11}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/twitter/android/api/b;->l:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p3

    move-wide v3, p1

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v12

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v11}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->y(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "count"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v6, 0x8b

    if-ne v1, v6, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(JJZ)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v3, :cond_5

    const-string v3, "TwitterService"

    const-string v6, "Problem processing response."

    invoke-static {v3, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private a(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "account"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "rate_limit_status"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    const-string v2, "rate_limit"

    invoke-static {v1}, Lcom/twitter/android/api/y;->h(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/f;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput v4, v0, Lcom/twitter/android/network/a;->a:I

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/network/i;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/a;
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "users"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "show"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-string v0, "screen_name"

    invoke-static {v2, v0, p2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "user_id"

    invoke-static {v2, v0, p3, p4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/provider/al;ILcom/twitter/android/network/i;JJJILandroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 11

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-eqz v2, :cond_6

    const/4 v3, 0x4

    const/4 v7, 0x1

    move-object v2, p1

    move v4, p2

    move-wide v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/al;->a(IIJI)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 p6, 0x0

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_1

    const/16 p10, 0x64

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessages: newer than sinceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_7

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "direct_messages"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_1
    const-string v2, ".json"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_2

    const-string v2, "since_id"

    move-wide/from16 v0, p6

    invoke-static {v4, v2, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-lez v2, :cond_3

    const-string v2, "max_id"

    move-wide/from16 v0, p8

    invoke-static {v4, v2, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_3
    if-lez p10, :cond_4

    const-string v2, "count"

    move/from16 v0, p10

    invoke-static {v4, v2, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_4
    const-string v2, "include_entities"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x0

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/api/y;->e(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v2, p8, v4

    if-lez v2, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/s;

    iget-wide v4, v2, Lcom/twitter/android/api/s;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v2, p8, v4

    if-eqz v2, :cond_9

    const/4 v7, 0x1

    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v2, p8, v4

    if-lez v2, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p10

    if-ge v2, v0, :cond_a

    const/4 v8, 0x1

    :goto_4
    move-object v2, p1

    move-wide v4, p4

    move v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/twitter/android/provider/al;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    move-result v3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    invoke-virtual {p1}, Lcom/twitter/android/provider/al;->e()I

    move-result v4

    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v5

    const-string v2, "account_name"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    if-lez v4, :cond_b

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v5, v6, v7, v2}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v2, "new_dm"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "unread_dm"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_6
    return-object v10

    :cond_6
    invoke-virtual {p1, p2}, Lcom/twitter/android/provider/al;->a(I)J

    move-result-wide p6

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "direct_messages"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "sent"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    iput v3, v10, Lcom/twitter/android/network/a;->a:I

    iput-object v2, v10, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    goto :goto_6
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/api/c;Lcom/twitter/android/network/i;JJILandroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 32

    if-nez p2, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const-string v5, "account_name"

    move-object/from16 v0, p9

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/4 v5, -0x2

    move/from16 v0, p8

    if-ne v0, v5, :cond_3

    const/4 v5, 0x1

    move v11, v5

    :goto_1
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/twitter/android/api/c;->a:J

    move-wide/from16 v24, v0

    if-eqz v11, :cond_4

    const/16 p8, 0x64

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/al;->e(JI)J

    move-result-wide p4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/al;->d(JI)J

    move-result-wide p6

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "TwitterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Refresh] sinceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", maxId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-eqz v5, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-eqz v5, :cond_2

    cmp-long v5, p6, p4

    if-nez v5, :cond_4

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "statuses"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "home_timeline"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-lez p8, :cond_5

    const-string v5, "count"

    move/from16 v0, p8

    invoke-static {v7, v5, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_5
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_6

    const-string v5, "max_id"

    move-wide/from16 v0, p6

    invoke-static {v7, v5, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_7

    const-string v5, "since_id"

    move-wide/from16 v0, p4

    invoke-static {v7, v5, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_7
    const-string v5, "include_entities"

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v5, "include_my_retweet"

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-gtz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v22, v5

    :goto_2
    if-eqz v22, :cond_8

    const-string v5, "pc"

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_8
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v10, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v9, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/android/network/a;->b()Z

    move-result v5

    if-eqz v5, :cond_c

    :try_start_0
    invoke-static {v10}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v5, v0, v6}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;Lcom/twitter/android/api/c;Z)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v16, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const-wide/16 v12, 0x0

    if-lez v27, :cond_16

    if-nez v11, :cond_16

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_e

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    move-wide/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/provider/al;->d(JJ)I

    move-result v5

    if-lez v5, :cond_e

    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/twitter/android/api/b;

    move-object v11, v0

    if-eqz v11, :cond_17

    const/4 v8, 0x0

    invoke-virtual {v11}, Lcom/twitter/android/api/b;->a()Lcom/twitter/android/api/b;

    move-result-object v5

    iget-wide v9, v5, Lcom/twitter/android/api/b;->a:J

    move-object/from16 v5, p1

    move-wide/from16 v6, v24

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/provider/al;->a(JIJ)Z

    move-result v5

    if-nez v5, :cond_17

    const/4 v9, 0x1

    iget-wide v5, v11, Lcom/twitter/android/api/b;->a:J

    iget-wide v7, v11, Lcom/twitter/android/api/b;->d:J

    :goto_3
    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move/from16 v16, v9

    :goto_4
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_10

    if-lez v27, :cond_10

    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/b;

    iget-wide v5, v5, Lcom/twitter/android/api/b;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_5
    if-eqz v22, :cond_9

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/twitter/android/provider/al;->c(I)I

    :cond_9
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_11

    const/4 v12, 0x1

    :goto_6
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-lez v5, :cond_12

    if-nez v16, :cond_12

    const/4 v13, 0x1

    :goto_7
    const/4 v15, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, v26

    move-wide/from16 v7, v24

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v13

    if-eqz v16, :cond_a

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, v24

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    invoke-virtual/range {v5 .. v12}, Lcom/twitter/android/provider/al;->a(JJJI)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/twitter/android/provider/az;->a:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/al;->f(JI)I

    move-result v6

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v7

    const-string v8, "tweet"

    if-lez v6, :cond_13

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v8, v5}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v5, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_b

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :try_start_2
    const-string v5, "new_tweet"

    move-object/from16 v0, p9

    invoke-virtual {v0, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "unread_tweet"

    move-object/from16 v0, p9

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_c
    :goto_9
    move-object/from16 v5, v17

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_2

    :cond_e
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_16

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/twitter/android/provider/al;->d(JI)J

    move-result-wide v18

    const-wide/16 v5, 0x0

    cmp-long v5, v18, v5

    if-lez v5, :cond_16

    const/16 v16, 0x1

    add-int/lit8 v5, v27, -0x1

    move-wide v6, v12

    move-wide v8, v14

    move v10, v5

    :goto_a
    if-ltz v10, :cond_15

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/b;

    invoke-virtual {v5}, Lcom/twitter/android/api/b;->a()Lcom/twitter/android/api/b;

    move-result-object v11

    iget-wide v11, v11, Lcom/twitter/android/api/b;->a:J

    cmp-long v11, v18, v11

    if-nez v11, :cond_f

    const/16 v16, 0x0

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    goto/16 :goto_4

    :cond_f
    iget-wide v11, v5, Lcom/twitter/android/api/b;->d:J

    cmp-long v11, v8, v11

    if-lez v11, :cond_14

    iget-wide v7, v5, Lcom/twitter/android/api/b;->d:J

    iget-wide v5, v5, Lcom/twitter/android/api/b;->a:J

    :goto_b
    add-int/lit8 v9, v10, -0x1

    move v10, v9

    move-wide/from16 v28, v7

    move-wide/from16 v8, v28

    move-wide/from16 v30, v5

    move-wide/from16 v6, v30

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v5

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v5

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v6, :cond_c

    const-string v6, "TwitterService"

    const-string v7, "Problem processing response."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_14
    move-wide/from16 v28, v6

    move-wide/from16 v5, v28

    move-wide/from16 v30, v8

    move-wide/from16 v7, v30

    goto :goto_b

    :cond_15
    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    goto/16 :goto_4

    :cond_16
    move-wide/from16 v18, v12

    move-wide/from16 v20, v14

    goto/16 :goto_4

    :cond_17
    move-wide v5, v12

    move-wide v7, v14

    move/from16 v9, v16

    goto/16 :goto_3
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;J)Lcom/twitter/android/network/a;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "trends"

    aput-object v2, v1, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/twitter/android/network/i;->c:Lcom/twitter/android/network/c;

    if-eqz v0, :cond_0

    const-string v0, "pc"

    invoke-static {v2, v0, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/y;->g(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/twitter/android/provider/al;->a(Ljava/util/ArrayList;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iput v4, v1, Lcom/twitter/android/network/a;->a:I

    iput-object v0, v1, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JIJJJIZLandroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 16

    packed-switch p5, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user_timeline"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "user_id"

    move-wide/from16 v0, p3

    invoke-static {v5, v3, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v3, "include_rts"

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :goto_0
    const-string v3, "include_entities"

    const/4 v4, 0x1

    invoke-static {v5, v3, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez p12, :cond_0

    const-string v3, "count"

    move/from16 v0, p12

    invoke-static {v5, v3, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p8, v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p10, v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-lez v3, :cond_1

    const-string v3, "since_id"

    move-wide/from16 v0, p6

    invoke-static {v5, v3, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p10, v3

    if-lez v3, :cond_2

    const-string v3, "max_id"

    move-wide/from16 v0, p10

    invoke-static {v5, v3, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_2
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v8, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/a;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_0
    invoke-static {v8}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v4, p8, v4

    if-nez v4, :cond_8

    invoke-static {v3}, Lcom/twitter/android/api/y;->c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v3, p10, v5

    if-lez v3, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/b;

    iget-wide v5, v3, Lcom/twitter/android/api/b;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v3, p10, v5

    if-lez v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    move v11, v3

    :goto_3
    const-string v15, "new_tweet"

    const-wide/16 v8, -0x1

    const-wide/16 v5, 0x0

    cmp-long v3, p10, v5

    if-lez v3, :cond_9

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move/from16 v13, p13

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v3

    move-object/from16 v0, p14

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_3

    const-wide/16 v7, -0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/b;

    iget-wide v9, v3, Lcom/twitter/android/api/b;->a:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/provider/al;->a(JIJJ)V

    :cond_3
    const/4 v3, 0x5

    move/from16 v0, p5

    if-ne v0, v3, :cond_5

    const/4 v3, 0x5

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/al;->f(JI)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v4

    const-string v5, "account_name"

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;I)I

    :cond_4
    const-string v4, "unread_mention"

    move-object/from16 v0, p14

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_5
    return-object v14

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mentions"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweeted_by_me"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweeted_to_me"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweets_of_me"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "show"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    :try_start_1
    invoke-static {v3}, Lcom/twitter/android/api/y;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;

    move-result-object v3

    const-string v4, "status_id"

    invoke-virtual {v3}, Lcom/twitter/android/api/b;->a()Lcom/twitter/android/api/b;

    move-result-object v5

    iget-wide v5, v5, Lcom/twitter/android/api/b;->a:J

    move-object/from16 v0, p14

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    sget-boolean v4, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "TwitterService"

    const-string v5, "Problem processing response."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JJ)Lcom/twitter/android/network/a;
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    cmp-long v0, p3, v1

    if-eqz v0, :cond_0

    cmp-long v0, p5, v1

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "friendships"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "show"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "source_id"

    invoke-static {v2, v0, p3, p4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v0, "target_id"

    invoke-static {v2, v0, p5, p6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p2, Lcom/twitter/android/network/i;->c:Lcom/twitter/android/network/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->j(Lorg/codehaus/jackson/JsonParser;)I

    move-result v1

    invoke-virtual {p1, p5, p6, v1}, Lcom/twitter/android/provider/al;->a(JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-static {v0, v1, v2, v4, v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JLjava/lang/String;ILcom/twitter/android/api/TweetEntities;JLandroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 19

    const-string v3, "impression_id"

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "lat"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v3, "long"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v15

    if-eqz p7, :cond_5

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    move v11, v3

    :goto_0
    if-eqz v11, :cond_a

    const/4 v3, 0x2

    move/from16 v0, p6

    if-eq v0, v3, :cond_a

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/twitter/android/api/TweetEntities$Media;

    iget-object v3, v10, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/twitter/android/network/i;->c:Lcom/twitter/android/network/c;

    iget-object v3, v10, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p6

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v9}, Lcom/twitter/android/util/g;->a(Landroid/content/Context;Lcom/twitter/android/network/b;ILcom/twitter/android/network/c;Landroid/net/Uri;Ljava/lang/String;Lcom/twitter/android/network/g;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v3, v10, Lcom/twitter/android/api/TweetEntities$Media;->displayUrl:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_1
    if-eqz v11, :cond_7

    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v6, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz v3, :cond_8

    sget v4, Lcom/twitter/android/m;->base_url_upload:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/twitter/android/service/TwitterService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "statuses"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "update_with_media"

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".json"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_3
    const-string v7, "status"

    invoke-static {v4, v7, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v5, p8, v7

    if-lez v5, :cond_2

    const-string v5, "in_reply_to_status_id"

    move-wide/from16 v0, p8

    invoke-static {v4, v5, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v12, :cond_2

    const-string v5, "impression_id"

    invoke-static {v4, v5, v12}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/16 v7, 0x0

    cmpl-double v5, v13, v7

    if-eqz v5, :cond_3

    const-wide/16 v7, 0x0

    cmpl-double v5, v15, v7

    if-eqz v5, :cond_3

    const-string v5, "lat"

    invoke-static {v4, v5, v13, v14}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    const-string v5, "long"

    move-wide v0, v15

    invoke-static {v4, v5, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    :cond_3
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/twitter/android/api/TweetEntities;->media:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/TweetEntities$Media;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v3, v3, Lcom/twitter/android/api/TweetEntities$Media;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v4, Lcom/twitter/android/network/f;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/twitter/android/network/f;-><init>(Lcom/twitter/android/network/g;)V

    const-string v7, "media[]"

    const/16 v8, 0x8

    invoke-static {v8}, Lcom/twitter/android/util/q;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8, v3}, Lcom/twitter/android/network/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)I

    invoke-virtual {v4}, Lcom/twitter/android/network/f;->a()V

    invoke-virtual {v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    :cond_4
    :goto_4
    new-instance v12, Lcom/twitter/android/network/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p2

    invoke-direct {v12, v3, v5, v0, v6}, Lcom/twitter/android/network/h;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/twitter/android/network/d;->a(Lcom/twitter/android/network/a;)V

    invoke-virtual {v12}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    invoke-virtual {v12}, Lcom/twitter/android/network/a;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_2
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/android/api/y;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;

    move-result-object v3

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/twitter/android/provider/al;->a(Lcom/twitter/android/api/b;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    move-object v3, v12

    :goto_6
    return-object v3

    :cond_5
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_0

    :cond_6
    const-wide/16 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p5

    move-wide/from16 v7, p3

    move-wide/from16 v9, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/provider/al;->a(JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J

    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "statuses"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "update"

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".json"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "include_entities"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :catch_0
    move-exception v3

    move-object v3, v4

    :goto_7
    invoke-static {v3}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v3

    :goto_8
    invoke-static {v4}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v3

    :cond_9
    const-wide/16 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p5

    move-wide/from16 v7, p3

    move-wide/from16 v9, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/provider/al;->a(JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto :goto_8

    :catch_2
    move-exception v4

    goto :goto_7

    :cond_a
    move-object/from16 v5, p5

    goto/16 :goto_1
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JZ)Lcom/twitter/android/network/a;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "direct_messages"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "destroy"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1, p2, v0}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p3, p4}, Lcom/twitter/android/provider/al;->c(J)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/twitter/android/network/a;->a:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, p3, p4}, Lcom/twitter/android/provider/al;->c(J)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 15

    const-string v1, "page"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "favorites"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, ".json"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-static {v3, v1, v12, v13}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-lez v9, :cond_0

    const-string v1, "page"

    invoke-static {v3, v1, v9}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    const-string v1, "include_entities"

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    if-lez v9, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/b;

    iget-wide v3, v1, Lcom/twitter/android/api/b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    :goto_0
    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    if-lez v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    const/4 v11, 0x1

    move-object/from16 v1, p1

    move-wide v3, v12

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v14

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;Z)Lcom/twitter/android/network/a;
    .locals 13

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "impression_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "report_spam"

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "id"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "impression_id"

    invoke-static {v3, v2, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v1

    iget v2, v1, Lcom/twitter/android/api/c;->t:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v2

    iput v2, v1, Lcom/twitter/android/api/c;->t:I

    invoke-virtual {p1, v10, v11, v7, v8}, Lcom/twitter/android/provider/al;->b(JJ)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-wide v3, v10

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v12

    :cond_2
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "blocks"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "create"

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBlock, spam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/c;
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/network/i;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/network/c;

    const-string v0, "oauth_token"

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "oauth_token_secret"

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/network/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Lcom/twitter/android/network/i;ILjava/lang/String;J)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "promoted_content"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "log"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_0

    const-string v0, "impression_id"

    invoke-static {v2, v0, p3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    const-string v0, "promoted_trend_id"

    invoke-static {v2, v0, p4, p5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-string v0, "event"

    sget-object v1, Lcom/twitter/android/service/TwitterService;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v2, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    return-void
.end method

.method private b(JLcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 7

    const-string v0, "status_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p5, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "impression_id"

    invoke-virtual {p5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "statuses"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "retweet"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "impression_id"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "include_entities"

    const-string v3, "true"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/y;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/twitter/android/provider/al;->a(Lcom/twitter/android/api/b;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "retweet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "client_applications"

    aput-object v2, v1, v6

    const-string v2, "configuration"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    const-string v2, "settings"

    invoke-static {v1}, Lcom/twitter/android/api/y;->i(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/z;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput v6, v0, Lcom/twitter/android/network/a;->a:I

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 14

    const-string v1, "list_type"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v1, "user_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v1, "page"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v2, 0x2

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(IIJI)Ljava/lang/String;

    move-result-object v1

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid list type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "lists"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v2, ".json"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "cursor"

    invoke-static {v8, v2, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v6, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v7, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v10, 0x0

    move-object/from16 v9, p2

    invoke-static/range {v6 .. v11}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    packed-switch v3, :pswitch_data_1

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-static {v11}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/aa;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput v1, v2, Lcom/twitter/android/network/a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v2

    :pswitch_1
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "lists"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "memberships"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v2, ".json"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "lists"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "subscriptions"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v2, ".json"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_4
    cmp-long v1, v4, v12

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_5
    cmp-long v1, v4, v12

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/twitter/android/api/aa;->b()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1}, Lcom/twitter/android/api/aa;->a()Ljava/lang/String;

    move-result-object v11

    move-object v6, p1

    move-wide v8, v4

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/twitter/android/network/a;->a:I

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "TwitterService"

    const-string v4, "Problem processing response."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;
    .locals 2

    sget-object v0, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/d;->a([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method private c(JLcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 8

    const/16 v7, 0xc8

    const/4 v6, 0x0

    const-string v0, "status_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p5, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "statuses"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "destroy"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v4, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v5, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-static {v4, v5, v2, p4, v3}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {v3}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/y;->d(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/b;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/twitter/android/provider/al;->a(JLcom/twitter/android/api/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iput v6, v2, Lcom/twitter/android/network/a;->a:I

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/twitter/android/network/a;->a:I

    const/16 v4, 0x194

    if-ne v3, v4, :cond_0

    invoke-virtual {p3, v0, v1}, Lcom/twitter/android/provider/al;->a(J)Lcom/twitter/android/api/b;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p3, p1, p2, v3}, Lcom/twitter/android/provider/al;->a(JLcom/twitter/android/api/b;)V

    iput v7, v2, Lcom/twitter/android/network/a;->a:I

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/twitter/android/provider/al;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v7, v2, Lcom/twitter/android/network/a;->a:I

    goto :goto_0

    :cond_3
    const-string v3, "TwitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroyStatus: status not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 6

    const/4 v4, 0x0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "urls"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "shorten"

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "url"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "short_url"

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "errors"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/network/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 15

    const-string v1, "page"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "user_type"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(IIJI)Ljava/lang/String;

    move-result-object v1

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "statuses"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "followers"

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    :goto_0
    const-string v2, ".json"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_id"

    invoke-static {v9, v2, v4, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    if-eqz v1, :cond_0

    const-string v2, "cursor"

    invoke-static {v9, v2, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v7, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v8, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v11, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v7 .. v12}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v12}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput v1, v2, Lcom/twitter/android/network/a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v2

    :pswitch_1
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "statuses"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "friends"

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/twitter/android/api/aa;->b()Ljava/util/ArrayList;

    move-result-object v7

    const-wide/16 v11, -0x1

    if-nez v6, :cond_3

    const-string v13, "-1"

    :goto_2
    invoke-virtual {v1}, Lcom/twitter/android/api/aa;->a()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v6, p1

    move-wide v8, v4

    move v10, v3

    invoke-virtual/range {v6 .. v14}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v3, "count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/twitter/android/network/a;->a:I

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "TwitterService"

    const-string v4, "Problem processing response."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 10

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v0, "lat"

    invoke-virtual {p2, v0, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "long"

    invoke-virtual {p2, v2, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v2, "accuracy"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "geo"

    aput-object v8, v7, v4

    const/4 v8, 0x1

    const-string v9, "reverse_geocode"

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".json"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "lat"

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "long"

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v0, "accuracy"

    invoke-static {v2, v0, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/y;->k(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/e;

    const/4 v5, 0x3

    iget v6, v0, Lcom/twitter/android/api/e;->a:I

    if-ne v5, v6, :cond_1

    iget-object v1, v0, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "TwitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found city type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/e;

    const/4 v4, 0x4

    iget v5, v0, Lcom/twitter/android/api/e;->a:I

    if-ne v4, v5, :cond_3

    iget-object v0, v0, Lcom/twitter/android/api/e;->b:Ljava/lang/String;

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "TwitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found admin type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const-string v1, "place"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "TwitterService"

    const-string v3, "reverseGeo"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private d(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 12

    const-string v0, "page"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "blocks"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "blocking"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, ".json"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v7, :cond_0

    const-string v0, "page"

    invoke-static {v2, v0, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/c;

    iget v3, v0, Lcom/twitter/android/api/c;->t:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v3

    iput v3, v0, Lcom/twitter/android/api/c;->t:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v11

    :cond_2
    const/4 v4, 0x2

    const-wide/16 v5, -0x1

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3

    :try_start_1
    const-string v7, "-1"

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    const-string v8, "0"

    :goto_3
    move-object v0, p1

    move-wide v2, v9

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "count"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private e(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 10

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "account"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "verify_credentials"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lcom/twitter/android/api/c;->a:J

    invoke-static {p0, v2, v3}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v0

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v9

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput v1, v9, Lcom/twitter/android/network/a;->a:I

    iput-object v0, v9, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    goto :goto_0
.end method

.method private e(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 15

    const-string v1, "device_follow"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "user_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v2, "impression_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "friendships"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "create"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "user_id"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "follow"

    const-string v6, "true"

    invoke-direct {v1, v4, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    const-string v1, "impression_id"

    invoke-static {v3, v1, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/android/api/c;->a:J

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/provider/al;->b(JI)V

    iget-wide v2, v1, Lcom/twitter/android/api/c;->a:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/provider/al;->d(J)I

    move-result v2

    iput v2, v1, Lcom/twitter/android/api/c;->t:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-wide v3, v12

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(IJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v14

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput v1, v14, Lcom/twitter/android/network/a;->a:I

    goto :goto_0
.end method

.method private f(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 11

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "owner_id"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "impression_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "friendships"

    aput-object v3, v2, v4

    const-string v3, "destroy"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, ".json"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_id"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    const-string v1, "impression_id"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v6, v7, v1}, Lcom/twitter/android/provider/al;->c(JI)V

    const/4 v1, 0x0

    iget-wide v4, v0, Lcom/twitter/android/api/c;->a:J

    move-object v0, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/al;->a(IJJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v10

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private g(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 12

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "owner_id"

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v2, "screen_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "direct_messages"

    aput-object v6, v4, v7

    const-string v6, "new"

    aput-object v6, v4, v10

    invoke-virtual {v2, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "user_id"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "text"

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "include_entities"

    const-string v3, "true"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/api/y;->f(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/s;

    move-result-object v11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/provider/al;->a(Ljava/util/List;JIZZLjava/lang/String;)I

    const-string v0, "user"

    iget-object v1, v11, Lcom/twitter/android/api/s;->e:Lcom/twitter/android/api/c;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v10

    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "screen_name"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "Problem processing response."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private h(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 14

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "screen_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/i;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v13

    if-eqz v13, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v13, Lcom/twitter/android/api/c;->a:J

    cmp-long v1, v10, v1

    if-eqz v1, :cond_0

    iget-wide v6, v13, Lcom/twitter/android/api/c;->a:J

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JJ)Lcom/twitter/android/network/a;

    :cond_0
    const-string v1, "user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v12

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    const-string v3, "Problem processing response."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private i(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 11

    const-wide/16 v3, 0x0

    const/4 v2, 0x2

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "owner_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "impression_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "blocks"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "destroy"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_id"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    const-string v1, "impression_id"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    move-object v0, p1

    move-wide v2, v8

    move-wide v4, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/al;->a(IJJ)V

    const/4 v0, 0x4

    invoke-virtual {p1, v6, v7, v0}, Lcom/twitter/android/provider/al;->c(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v10

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "destroyBlock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private j(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 12

    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list_mode"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "list_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "lists"

    aput-object v9, v5, v8

    invoke-virtual {v2, v5}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_0
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "name"

    invoke-direct {v5, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    packed-switch v3, :pswitch_data_0

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/t;

    move-result-object v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-wide v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JILjava/lang/String;)V

    const-string v0, "list_id"

    invoke-virtual {v9}, Lcom/twitter/android/api/t;->a()J

    move-result-wide v1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v8

    :cond_2
    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "lists"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-virtual {v2, v5}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    :pswitch_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mode"

    const-string v5, "public"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mode"

    const-string v5, "private"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "TwitterService"

    const-string v2, "createList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private k(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 9

    const-wide/16 v3, 0x0

    const/4 v8, 0x2

    const-string v0, "owner_id"

    invoke-virtual {p3, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "list_id"

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "lists"

    aput-object v7, v5, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_method"

    const-string v6, "DELETE"

    invoke-static {v4, v5, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v6, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v7, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-static {v6, v7, v4, p2, v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/t;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/twitter/android/provider/al;->c(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TwitterService"

    const-string v2, "createList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private l(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 17

    const-string v1, "since_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "user_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v3, "list_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v3, "max_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v3, "count"

    const/16 v4, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-string v9, "lists"

    aput-object v9, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x3

    const-string v9, "statuses"

    aput-object v9, v5, v6

    invoke-virtual {v3, v5}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".json"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    const-string v5, "since_id"

    invoke-static {v3, v5, v1, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-lez v1, :cond_1

    const-string v1, "max_id"

    invoke-static {v3, v1, v7, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-string v1, "per_page"

    invoke-static {v3, v1, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v1, "include_entities"

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/twitter/android/network/i;->c:Lcom/twitter/android/network/c;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    move-object v12, v1

    :goto_0
    invoke-virtual {v12}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->c(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v1, v7, v3

    if-lez v1, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/b;

    iget-wide v3, v1, Lcom/twitter/android/api/b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v1, v7, v3

    if-lez v1, :cond_5

    const/4 v9, 0x1

    :goto_2
    const/16 v5, 0x9

    const-wide/16 v3, 0x0

    cmp-long v1, v7, v3

    if-lez v1, :cond_6

    const/4 v8, 0x1

    :goto_3
    const/4 v11, 0x1

    move-object/from16 v1, p1

    move-wide v3, v13

    move-wide v6, v15

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_4
    return-object v12

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "TwitterService"

    const-string v3, "getListTweets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private m(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 17

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "list_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v1, "page"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "user_type"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(IIJI)Ljava/lang/String;

    move-result-object v1

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "members"

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    :goto_0
    const-string v2, ".json"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v2, "cursor"

    invoke-static {v9, v2, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v11, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v7 .. v12}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v12}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/aa;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput v1, v2, Lcom/twitter/android/network/a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "subscribers"

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/twitter/android/api/aa;->b()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v6, :cond_3

    const-string v13, "-1"

    :goto_2
    invoke-virtual {v1}, Lcom/twitter/android/api/aa;->a()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v6, p1

    move-wide v8, v4

    move v10, v3

    move-wide v11, v15

    invoke-virtual/range {v6 .. v14}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v3, "count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/twitter/android/network/a;->a:I

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "TwitterService"

    const-string v4, "getListUsers"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 14

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "list_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "user_type"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/i;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v13

    if-eqz v13, :cond_0

    packed-switch v12, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown user type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "TwitterService"

    const-string v3, "addListUser"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const-string v6, "members"

    aput-object v6, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object/from16 v4, p2

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/t;

    move-result-object v6

    move-object v1, p1

    move-wide v2, v8

    move-object v4, v13

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/android/provider/al;->a(JLcom/twitter/android/api/c;ILcom/twitter/android/api/t;)V

    :cond_1
    move-object v1, v7

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "subscribers"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private o(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 14

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "list_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "user_type"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    packed-switch v12, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown user type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x2

    const-string v2, "members"

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v1, "_method"

    const-string v2, "DELETE"

    invoke-static {v3, v1, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch v12, :pswitch_data_1

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/t;

    move-result-object v7

    move-object v1, p1

    move v2, v12

    move-wide v3, v8

    move-wide v5, v10

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/provider/al;->a(IJJLcom/twitter/android/api/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-object v13

    :pswitch_1
    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x2

    const-string v2, "subscribers"

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "TwitterService"

    const-string v3, "removeListUser"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private p(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 25

    const-string v2, "owner_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v2, "max_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "since_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "page"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v2, "q"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "q_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "q_type"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "place"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "lang"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "show_user"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v2, "geo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "locale"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "count"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_0

    const/16 v2, 0x14

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v4, v4, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v20, 0x0

    const-string v21, "i"

    aput-object v21, v14, v20

    const/16 v20, 0x1

    const-string v21, "search"

    aput-object v21, v14, v20

    invoke-static {v4, v14}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ".json"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "q"

    move-object/from16 v0, v18

    invoke-static {v4, v14, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x5

    if-eq v3, v14, :cond_1

    const/16 v14, 0x8

    if-eq v3, v14, :cond_1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/al;->a(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_1
    const-string v14, "result_type"

    const-string v20, "recent"

    move-object/from16 v0, v20

    invoke-static {v4, v14, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v9, :cond_2

    const-string v14, "lang"

    invoke-static {v4, v14, v9}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v13, :cond_3

    const-string v9, "locale"

    invoke-static {v4, v9, v13}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-wide/16 v13, 0x0

    cmp-long v9, v7, v13

    if-eqz v9, :cond_4

    const-string v9, "since_id"

    invoke-static {v4, v9, v7, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_4
    const-string v7, "rpp"

    invoke-static {v4, v7, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_5

    const-string v2, "max_id"

    invoke-static {v4, v2, v5, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_5
    if-eqz v10, :cond_6

    const-string v2, "show_user"

    invoke-static {v4, v2, v10}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_6
    if-eqz v11, :cond_7

    const-string v2, "geocode"

    invoke-static {v4, v2, v11}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    const-string v2, "stories"

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/4 v2, 0x5

    if-eq v3, v2, :cond_8

    const-string v2, "pc"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_8
    const-string v2, "include_entities"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v7}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/twitter/android/network/a;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_0
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/android/api/y;->s(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/u;

    move-result-object v3

    iget-object v2, v3, Lcom/twitter/android/api/u;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v2, v3, Lcom/twitter/android/api/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v3, Lcom/twitter/android/api/u;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/TwitterStory;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/provider/al;->a(Lcom/twitter/android/api/TwitterStory;Ljava/lang/String;)I

    :cond_9
    iget-object v0, v3, Lcom/twitter/android/api/u;->a:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/android/provider/al;->a()I

    :cond_a
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/b;

    iget-object v4, v2, Lcom/twitter/android/api/b;->q:Lcom/twitter/android/api/PromotedContent;

    if-eqz v4, :cond_d

    iget-object v4, v2, Lcom/twitter/android/api/b;->q:Lcom/twitter/android/api/PromotedContent;

    iget-object v4, v4, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v3, :cond_b

    const-string v3, "TwitterService"

    const-string v4, "searchTweets"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_2
    return-object v20

    :cond_c
    const-string v14, "result_type"

    const-string v20, "mixed"

    move-object/from16 v0, v20

    invoke-static {v4, v14, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_1
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    new-instance v2, Lcom/twitter/android/api/x;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    invoke-direct/range {v2 .. v14}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/PromotedContent;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x9

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/provider/al;->a(Ljava/util/ArrayList;I)I

    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_10

    const/4 v9, 0x1

    :goto_3
    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move-wide v4, v15

    move v10, v9

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    const/16 v6, 0xd

    const-wide/16 v7, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-wide v4, v15

    move v10, v9

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/al;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    const/16 v6, 0xd

    const-wide/16 v7, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-wide v4, v15

    move v10, v9

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/al;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/az;->o:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_10
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private q(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 16

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "q"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "count"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v1, "page"

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "users"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "search"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "q"

    invoke-static {v3, v2, v12}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "per_page"

    invoke-static {v3, v2, v13}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    if-lez v1, :cond_0

    const-string v2, "page"

    invoke-static {v3, v2, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/twitter/android/network/i;->c:Lcom/twitter/android/network/c;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    move-object v9, v1

    :goto_0
    invoke-virtual {v9}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v14

    const-string v15, "search_id"

    new-instance v1, Lcom/twitter/android/api/x;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, v12

    invoke-direct/range {v1 .. v8}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/twitter/android/api/PromotedContent;)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v13, :cond_3

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v2, p1

    move-object v3, v1

    move-object v4, v14

    move-wide v5, v10

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/al;->a(Lcom/twitter/android/api/x;Ljava/util/List;JZ)J

    move-result-wide v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v9

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/android/network/a;->a(I)Lcom/twitter/android/network/a;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput v1, v9, Lcom/twitter/android/network/a;->a:I

    goto :goto_2
.end method

.method private r(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 11

    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "place"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "account_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "account"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "update_profile"

    aput-object v8, v4, v7

    invoke-virtual {v2, v4}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "name"

    invoke-direct {v7, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v3, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "url"

    invoke-direct {v0, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v5, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "location"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/twitter/android/network/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/api/y;->a(Lorg/codehaus/jackson/JsonParser;J)Lcom/twitter/android/api/c;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {p0, v6, v10, v0}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/c;Lcom/twitter/android/api/o;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    const-string v0, "user"

    invoke-virtual {p3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-object v9

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "TwitterService"

    const-string v2, "updateProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private s(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 15

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "since_id"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "max_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v3, "count"

    const/16 v4, 0x64

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v3, "i_type"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v3, 0x1

    if-ne v3, v13, :cond_3

    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v3, v3, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "activity"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "by_friends"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_0
    const-string v4, "include_entities"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    if-lez v7, :cond_0

    const-string v4, "count"

    invoke-static {v3, v4, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_1

    const-string v4, "max_id"

    invoke-static {v3, v4, v11, v12}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    const-string v4, "since_id"

    invoke-static {v3, v4, v1, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v2, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v14

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_0
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/api/y;->r(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v1, v11, v3

    if-lez v1, :cond_4

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v1, p1

    move-wide v3, v9

    move v5, v13

    invoke-virtual/range {v1 .. v7}, Lcom/twitter/android/provider/al;->a(Ljava/util/ArrayList;JIZZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v13, :cond_7

    if-nez v6, :cond_7

    if-lez v3, :cond_7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/d;

    iget v1, v1, Lcom/twitter/android/api/d;->a:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    :goto_4
    move v2, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v3, v3, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "i"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "activity"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "about_me"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    :pswitch_0
    or-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_1
    or-int/lit8 v2, v2, 0x2

    goto :goto_3

    :pswitch_2
    or-int/lit8 v2, v2, 0x4

    goto :goto_3

    :pswitch_3
    or-int/lit8 v2, v2, 0x8

    goto :goto_3

    :pswitch_4
    or-int/lit8 v1, v2, 0x10

    goto :goto_4

    :cond_6
    :try_start_2
    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v1

    const-string v4, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    move v1, v3

    :goto_5
    const-string v2, "count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v14

    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v8

    :goto_6
    const/4 v3, 0x0

    iput v3, v14, Lcom/twitter/android/network/a;->a:I

    iput-object v2, v14, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v2, v1

    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v8

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private t(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;
    .locals 11

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v0, v0, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "i"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "discovery"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "lat"

    invoke-virtual {p3, v0, v9, v10}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v3, "long"

    invoke-virtual {p3, v3, v9, v10}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v3, "soid"

    const-wide/16 v7, 0x0

    invoke-virtual {p3, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmpl-double v3, v0, v9

    if-eqz v3, :cond_0

    cmpl-double v3, v5, v9

    if-eqz v3, :cond_0

    const-string v3, "lat"

    invoke-static {v2, v3, v0, v1}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    const-string v0, "long"

    invoke-static {v2, v0, v5, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;D)V

    :cond_0
    const-string v0, "lang"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lang"

    invoke-static {v2, v1, v0}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    iget-object v1, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v1

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    invoke-static {v0}, Lcom/twitter/android/api/y;->t(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0, v7, v8}, Lcom/twitter/android/provider/al;->a(Ljava/util/List;J)I

    move-result v0

    if-lez v0, :cond_2

    const-string v2, "unread_stories"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iput v4, v1, Lcom/twitter/android/network/a;->a:I

    iput-object v0, v1, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/service/TwitterService;->stopSelf(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0
.end method

.method final a(Landroid/content/Intent;I)V
    .locals 36

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/twitter/android/service/TwitterService;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    new-instance v7, Lcom/twitter/android/network/i;

    const-string v2, "auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/network/c;

    invoke-direct {v7, v2}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    const-string v2, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "soid"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v2

    if-nez v5, :cond_4

    const/4 v5, 0x0

    move/from16 v24, v5

    :goto_1
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    packed-switch v24, :pswitch_data_0

    sget-boolean v2, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "TwitterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown action: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v7, v17

    :goto_2
    if-eqz v7, :cond_3f

    iget v6, v7, Lcom/twitter/android/network/a;->a:I

    iget-object v5, v7, Lcom/twitter/android/network/a;->b:Ljava/lang/String;

    iget-object v2, v7, Lcom/twitter/android/network/a;->d:Lcom/twitter/android/api/f;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v7}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLcom/twitter/android/network/a;)V

    move-object v3, v5

    move v4, v6

    :goto_3
    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "TwitterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action complete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v5, "ibinder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "action_code"

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "resp_code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "reason_phrase"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "rate_limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->h:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/service/TwitterService;->h:Landroid/os/Handler;

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v24, v5

    goto/16 :goto_1

    :pswitch_0
    new-instance v5, Lcom/twitter/android/platform/n;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/twitter/android/platform/n;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/content/SyncResult;

    invoke-direct {v6}, Landroid/content/SyncResult;-><init>()V

    const-string v2, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    const-string v7, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    invoke-virtual {v5, v8, v2, v7, v6}, Lcom/twitter/android/platform/n;->a(Lcom/twitter/android/network/b;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_1
    const-string v5, "i_type"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "status_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    const-wide/16 v6, -0x1

    invoke-virtual/range {v2 .. v8}, Lcom/twitter/android/provider/al;->a(JIJ[J)V

    if-nez v8, :cond_1

    sparse-switch v5, :sswitch_data_0

    :goto_4
    move-object/from16 v7, v17

    goto/16 :goto_2

    :sswitch_0
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v2

    const-string v5, "tweet"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-object/from16 v7, v17

    goto/16 :goto_2

    :sswitch_1
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v2

    const-string v5, "mention"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_4

    :pswitch_2
    invoke-virtual {v2}, Lcom/twitter/android/provider/al;->d()V

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v2

    const-string v5, "message"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_3
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/twitter/android/provider/al;->f(J)V

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/twitter/android/platform/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/twitter/android/provider/al;->c()V

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_5
    const-string v5, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "status_type"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v5, "max_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v5, "status_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v5, "since_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v5, p0

    move-object v6, v2

    move-object/from16 v19, p1

    invoke-direct/range {v5 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JIJJJIZLandroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v11, v2

    move-object v12, v7

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/twitter/android/service/TwitterService;->a(JLcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_7
    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "impression_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    move-object v8, v2

    move-wide v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/twitter/android/provider/al;->a(JJZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "favorites"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "destroy"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v6, ".json"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_5

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "impression_id"

    invoke-direct {v6, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/16 v18, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v13 .. v18}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v8

    iget v5, v8, Lcom/twitter/android/network/a;->a:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_6

    const/4 v7, 0x1

    move-wide v5, v11

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/provider/al;->a(JJZ)V

    :cond_6
    move-object v7, v8

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->b(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->c(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->d(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->f(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_f
    const-string v5, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v5, "max_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v5, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/16 v5, 0x10

    move/from16 v0, v24

    if-ne v0, v5, :cond_7

    const/4 v10, 0x1

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v11, v7

    move-object/from16 v19, p1

    invoke-direct/range {v8 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;ILcom/twitter/android/network/i;JJJILandroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :cond_7
    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v11, v7

    invoke-direct/range {v8 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;ILcom/twitter/android/network/i;JJJILandroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_10
    const-string v5, "user_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v7, "unread_tweet"

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8}, Lcom/twitter/android/provider/al;->f(JI)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "unread_mention"

    const/4 v8, 0x5

    invoke-virtual {v2, v5, v6, v8}, Lcom/twitter/android/provider/al;->f(JI)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "unread_dm"

    invoke-virtual {v2}, Lcom/twitter/android/provider/al;->e()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->g(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_12
    const-string v5, "message_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JZ)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->c(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_14
    const-string v5, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "user_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v11}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JJ)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->h(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_16
    const-string v5, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Lcom/twitter/android/api/TweetEntities;

    const-string v5, "i_type"

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v5, p0

    move-object v6, v2

    move-wide v8, v3

    move-object/from16 v15, p1

    invoke-direct/range {v5 .. v15}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JLjava/lang/String;ILcom/twitter/android/api/TweetEntities;JLandroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_17
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v11, v2

    move-object v12, v7

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/twitter/android/service/TwitterService;->b(JLcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_18
    move-object/from16 v8, p0

    move-wide v9, v3

    move-object v11, v2

    move-object v12, v7

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/twitter/android/service/TwitterService;->c(JLcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_19
    const/16 v5, 0x1c

    move/from16 v0, v24

    if-ne v0, v5, :cond_8

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1, v5}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;Z)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->i(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->j(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->k(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->l(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->m(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->n(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->o(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_21
    const-string v5, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v8, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v10, "list_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v10, "user_type"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    packed-switch v10, :pswitch_data_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v12

    const/4 v5, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x2

    const-string v6, "members"

    aput-object v6, v11, v5

    const/4 v5, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v5

    invoke-virtual {v10, v11}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    :goto_6
    const-string v5, ".json"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    invoke-virtual {v2, v14, v15, v6}, Lcom/twitter/android/provider/al;->a(JZ)V

    :cond_9
    :goto_7
    move-object v7, v5

    goto/16 :goto_2

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v12

    const/4 v5, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x2

    const-string v6, "subscribers"

    aput-object v6, v11, v5

    const/4 v5, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v5

    invoke-virtual {v10, v11}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    goto :goto_6

    :cond_a
    iget v6, v5, Lcom/twitter/android/network/a;->a:I

    const/16 v7, 0x194

    if-ne v6, v7, :cond_9

    const/4 v6, 0x0

    invoke-virtual {v2, v14, v15, v6}, Lcom/twitter/android/provider/al;->a(JZ)V

    goto :goto_7

    :pswitch_24
    const-string v5, "locale"

    const-wide/16 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v5, v6}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;J)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->p(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_26
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->q(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->r(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->d(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_2a
    const-string v2, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v7, v7, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/oauth/access_token"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x_auth_mode"

    const-string v8, "client_auth"

    invoke-static {v6, v7, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x_auth_password"

    invoke-static {v6, v7, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "x_auth_username"

    invoke-static {v6, v5, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    new-instance v8, Lcom/twitter/android/network/i;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    invoke-static {v2, v7, v6, v8, v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->a(Ljava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    const-string v5, "auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v5, Lcom/twitter/android/network/i;

    invoke-direct {v5, v2}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    :cond_b
    move-object v7, v2

    goto/16 :goto_2

    :pswitch_2b
    const-string v2, "log_ev"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_1

    const-string v2, "impression_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "trend_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/i;ILjava/lang/String;J)V

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_2c
    const-string v5, "max_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v5, "count"

    const/16 v6, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v5, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/twitter/android/api/c;

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v11, v7

    move-object/from16 v17, p1

    invoke-direct/range {v8 .. v17}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/api/c;Lcom/twitter/android/network/i;JJILandroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_2d
    const-string v5, "status_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v5, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "android.intent.extra.UID"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v5, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/twitter/android/api/TweetEntities;

    move-object v5, v2

    move-wide v9, v3

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/al;->a(JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_2e
    const-string v5, "status_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v5, v7, v8

    invoke-virtual {v2, v7}, Lcom/twitter/android/provider/al;->a([J)I

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_2f
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "i_type"

    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v6, Lcom/twitter/android/provider/az;->l:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v9, "ownerId"

    invoke-virtual {v6, v9, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    const/4 v5, 0x4

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "g_status_id"

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "content"

    aput-object v6, v10, v5

    const/4 v5, 0x2

    const-string v6, "entities"

    aput-object v6, v10, v5

    const/4 v5, 0x3

    const-string v6, "in_r_status_id"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "updated_at ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [J

    move-object/from16 v19, v0

    :goto_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v19, v5

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/TweetEntities;->a([B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v12

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v5, p0

    move-object v6, v2

    move-wide v8, v3

    move/from16 v11, v16

    move-object/from16 v15, p1

    invoke-direct/range {v5 .. v15}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JLjava/lang/String;ILcom/twitter/android/api/TweetEntities;JLandroid/content/Intent;)Lcom/twitter/android/network/a;

    goto :goto_8

    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/twitter/android/provider/al;->b([J)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "saved_searches"

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_42

    :try_start_0
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/y;->l(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v2, v6, v7}, Lcom/twitter/android/provider/al;->a(Ljava/util/ArrayList;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v5

    goto/16 :goto_2

    :catch_0
    move-exception v2

    sget-boolean v6, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v6, :cond_d

    const-string v6, "TwitterService"

    const-string v7, "getSavedSearches"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    move-object v7, v5

    goto/16 :goto_2

    :pswitch_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "users"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "suggestions"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "locale"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    const-string v8, "lang"

    invoke-static {v5, v8, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "country"

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "localize"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_e
    const-string v6, "samples"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v6, "sample_size"

    const-string v7, "large"

    invoke-static {v5, v6, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9, v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/a;->b()Z

    move-result v5

    if-eqz v5, :cond_47

    :try_start_1
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/y;->n(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v15

    const-string v5, "count"

    const/4 v6, 0x7

    invoke-virtual {v2, v15, v6}, Lcom/twitter/android/provider/al;->a(Ljava/util/ArrayList;I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/x;

    iget-object v8, v5, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    if-eqz v8, :cond_f

    iget-object v5, v5, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v2

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_10

    const-string v5, "TwitterService"

    const-string v6, "Parsing suggestions"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    move-object v7, v14

    goto/16 :goto_2

    :cond_11
    :try_start_2
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/x;

    iget-object v6, v5, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    const/4 v9, 0x6

    iget-wide v10, v5, Lcom/twitter/android/api/x;->g:J

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v12}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;)V

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/twitter/android/provider/ay;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v14

    goto/16 :goto_2

    :pswitch_32
    const-string v5, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "suggestions"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v6, v8}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/twitter/android/network/a;->b()Z

    move-result v5

    if-eqz v5, :cond_47

    :try_start_3
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/y;->o(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_13

    const/4 v2, 0x0

    iput v2, v14, Lcom/twitter/android/network/a;->a:I

    move-object v7, v14

    goto/16 :goto_2

    :cond_13
    const-string v5, "owner_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v9, 0x6

    const-string v5, "list_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v12, "-1"

    const-string v13, "0"

    move-object v5, v2

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v14

    goto/16 :goto_2

    :catch_2
    move-exception v2

    sget-boolean v5, Lcom/twitter/android/service/TwitterService;->a:Z

    if-eqz v5, :cond_14

    const-string v5, "TwitterService"

    const-string v6, "Parse slug users"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    move-object v7, v14

    goto/16 :goto_2

    :pswitch_33
    const-string v5, "page"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v6, "limit"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "user_type"

    const/16 v9, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "users"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "recommendations"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v8, "connections"

    const-string v9, "connections"

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v10, v8, v9}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-wide/16 v8, 0x0

    cmp-long v8, v14, v8

    if-lez v8, :cond_15

    const-string v8, "user_id"

    invoke-static {v10, v8, v14, v15}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    :cond_15
    if-lez v6, :cond_16

    const-string v8, "limit"

    invoke-static {v10, v8, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_16
    const-string v6, "pc"

    const/4 v8, 0x1

    invoke-static {v10, v6, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_46

    :try_start_4
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/y;->v(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmp-long v7, v14, v7

    if-lez v7, :cond_17

    move-wide v7, v14

    :goto_b
    if-nez v5, :cond_18

    const-string v10, "-1"

    :goto_c
    const/4 v11, 0x0

    move-object v5, v2

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/twitter/android/provider/al;->a(Ljava/util/ArrayList;JILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v5, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v7, v12

    goto/16 :goto_2

    :cond_17
    move-wide v7, v3

    goto :goto_b

    :cond_18
    const/4 v10, 0x0

    goto :goto_c

    :catch_3
    move-exception v2

    const/4 v2, 0x0

    iput v2, v12, Lcom/twitter/android/network/a;->a:I

    move-object v7, v12

    goto/16 :goto_2

    :pswitch_34
    const-string v2, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    const-string v8, "lists"

    aput-object v8, v7, v2

    const/4 v2, 0x2

    aput-object v5, v7, v2

    invoke-virtual {v6, v7}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8, v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_40

    :try_start_5
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;I)Lcom/twitter/android/api/t;

    move-result-object v5

    const-string v6, "list_id"

    invoke-virtual {v5}, Lcom/twitter/android/api/t;->a()J

    move-result-wide v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "owner_id"

    invoke-virtual {v5}, Lcom/twitter/android/api/t;->h()Lcom/twitter/android/api/c;

    move-result-object v5

    iget-wide v7, v5, Lcom/twitter/android/api/c;->a:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v7, v2

    goto/16 :goto_2

    :catch_4
    move-exception v5

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_35
    const-string v5, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    const-string v5, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const-string v5, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const-string v5, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v29

    const-string v5, "i_type"

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const-string v5, "list_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    if-eqz v27, :cond_1b

    move-object/from16 v0, v27

    array-length v9, v0

    :goto_d
    if-eqz v28, :cond_1c

    move-object/from16 v0, v28

    array-length v8, v0

    :goto_e
    if-eqz v29, :cond_1d

    move-object/from16 v0, v29

    array-length v5, v0

    :goto_f
    add-int v6, v9, v8

    add-int/2addr v6, v5

    const/16 v10, 0x64

    invoke-static {v6, v10}, Lcom/twitter/android/network/d;->a(II)I

    move-result v33

    const/4 v10, 0x0

    const/4 v6, 0x0

    move/from16 v18, v6

    move v6, v10

    move/from16 v35, v8

    move v8, v5

    move/from16 v5, v35

    :goto_10
    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "users"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "lookup"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".json"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x64

    if-lez v8, :cond_44

    const-string v11, "user_id"

    move-object/from16 v0, v29

    array-length v12, v0

    sub-int/2addr v12, v8

    const/16 v13, 0x64

    move-object/from16 v0, v29

    invoke-static {v10, v11, v0, v12, v13}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)I

    move-result v11

    sub-int v19, v8, v11

    rsub-int/lit8 v8, v11, 0x64

    :goto_11
    if-lez v8, :cond_45

    if-lez v9, :cond_45

    const-string v11, "email"

    move-object/from16 v0, v27

    array-length v12, v0

    sub-int/2addr v12, v9

    move-object/from16 v0, v27

    invoke-static {v10, v11, v0, v12, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    sub-int/2addr v9, v11

    sub-int/2addr v8, v11

    move/from16 v20, v9

    :goto_12
    if-lez v8, :cond_19

    if-lez v5, :cond_19

    const-string v9, "phone"

    move-object/from16 v0, v28

    array-length v11, v0

    sub-int/2addr v11, v5

    move-object/from16 v0, v28

    invoke-static {v10, v9, v0, v11, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v8

    sub-int/2addr v5, v8

    :cond_19
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/twitter/android/network/a;->b()Z

    move-result v8

    if-eqz v8, :cond_1a

    :try_start_6
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v8

    invoke-static {v8}, Lcom/twitter/android/api/y;->b(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v18, :cond_1e

    const-string v15, "-1"

    :goto_13
    const/16 v16, 0x0

    move-object v8, v2

    move-wide/from16 v10, v25

    move/from16 v12, v30

    move-wide/from16 v13, v31

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v8

    add-int/2addr v6, v8

    :cond_1a
    :goto_14
    add-int/lit8 v8, v18, 0x1

    move/from16 v18, v8

    move/from16 v9, v20

    move/from16 v8, v19

    goto/16 :goto_10

    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_d

    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_e

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_1e
    const/4 v15, 0x0

    goto :goto_13

    :catch_5
    move-exception v8

    const/4 v9, 0x0

    move-object/from16 v0, v34

    iput v9, v0, Lcom/twitter/android/network/a;->a:I

    move-object/from16 v0, v34

    iput-object v8, v0, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    goto :goto_14

    :cond_1f
    const-string v2, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_36
    const-string v2, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "q_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "q_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v7, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v7, v7, Lcom/twitter/android/network/d;->c:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "signup"

    aput-object v14, v9, v13

    invoke-static {v7, v9}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_20

    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "fullname"

    invoke-direct {v13, v14, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    if-eqz v5, :cond_21

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "screen_name"

    invoke-direct {v2, v13, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz v6, :cond_22

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "email"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz v8, :cond_23

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "password"

    invoke-direct {v2, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v12, :cond_24

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "lang"

    invoke-direct {v2, v5, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    if-eqz v10, :cond_25

    if-eqz v11, :cond_25

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "captcha_token"

    invoke-direct {v2, v5, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "captcha_solution"

    invoke-direct {v2, v5, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    new-instance v8, Lcom/twitter/android/network/i;

    const/4 v2, 0x0

    sget-object v11, Lcom/twitter/android/network/i;->a:Ljava/lang/String;

    sget-object v12, Lcom/twitter/android/network/i;->b:Ljava/lang/String;

    invoke-direct {v8, v2, v11, v12}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v5 .. v10}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->b()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v10}, Lcom/twitter/android/service/TwitterService;->a(Ljava/io/ByteArrayOutputStream;)Lcom/twitter/android/network/c;

    move-result-object v2

    const-string v6, "auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v6, Lcom/twitter/android/network/i;

    invoke-direct {v6, v2}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/twitter/android/service/TwitterService;->e(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v2

    if-nez v2, :cond_26

    const/16 v2, 0x190

    iput v2, v5, Lcom/twitter/android/network/a;->a:I

    :cond_26
    move-object v7, v5

    goto/16 :goto_2

    :cond_27
    iget v2, v5, Lcom/twitter/android/network/a;->a:I

    const/16 v6, 0x193

    if-ne v2, v6, :cond_2c

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    :try_start_7
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "fullname"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "fullname"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_28

    const-string v7, "name"

    sget-object v8, Lcom/twitter/android/util/a;->a:Lcom/twitter/android/util/a;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/v;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/v;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_28
    const-string v2, "email"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "email"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_29

    const-string v7, "email"

    sget-object v8, Lcom/twitter/android/util/a;->a:Lcom/twitter/android/util/a;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/v;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/v;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_29
    const-string v2, "screen_name"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "screen_name"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2a

    const-string v7, "screen_name"

    sget-object v8, Lcom/twitter/android/util/a;->a:Lcom/twitter/android/util/a;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/v;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/v;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2a
    const-string v2, "password"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "password"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2b

    const-string v6, "pass"

    sget-object v7, Lcom/twitter/android/util/a;->a:Lcom/twitter/android/util/a;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/twitter/android/util/a;->a(Ljava/lang/String;)Lcom/twitter/android/util/v;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/android/util/v;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_2b
    move-object v7, v5

    goto/16 :goto_2

    :catch_6
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/a;->a:I

    iput-object v2, v5, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_2

    :cond_2c
    iget v2, v5, Lcom/twitter/android/network/a;->a:I

    const/16 v6, 0x19c

    if-ne v2, v6, :cond_42

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    :try_start_8
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "captcha_token"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "captcha_image_url"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "q_name"

    const-string v7, "captcha_token"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q"

    const-string v7, "captcha_image_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v7, v5

    goto/16 :goto_2

    :cond_2d
    const/4 v2, 0x0

    iput v2, v5, Lcom/twitter/android/network/a;->a:I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    move-object v7, v5

    goto/16 :goto_2

    :catch_7
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/a;->a:I

    iput-object v2, v5, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_2

    :pswitch_37
    const-string v5, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v10

    array-length v5, v10

    const/16 v6, 0x64

    invoke-static {v5, v6}, Lcom/twitter/android/network/d;->a(II)I

    move-result v11

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v9, v5

    move v5, v6

    move v6, v8

    move-object/from16 v8, v17

    :goto_15
    if-ge v9, v11, :cond_2f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "friendships"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "create_all"

    aput-object v14, v12, v13

    invoke-virtual {v8, v12}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ".json"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "user_id"

    mul-int/lit8 v13, v9, 0x64

    const/16 v14, 0x64

    invoke-static {v8, v12, v10, v13, v14}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)I

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-static {v13, v14, v8, v7, v12}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/android/network/a;->b()Z

    move-result v8

    if-eqz v8, :cond_2e

    :try_start_9
    invoke-static {v12}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v8

    invoke-static {v8}, Lcom/twitter/android/api/y;->p(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v12, 0x1

    invoke-virtual {v2, v8, v12}, Lcom/twitter/android/provider/al;->b(Ljava/util/ArrayList;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    const/4 v5, 0x1

    :goto_16
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move-object/from16 v8, v17

    goto :goto_15

    :cond_2e
    const/4 v6, 0x1

    goto :goto_16

    :cond_2f
    if-eqz v6, :cond_43

    if-eqz v5, :cond_43

    const/16 v2, 0x1a2

    iput v2, v8, Lcom/twitter/android/network/a;->a:I

    move-object v7, v8

    goto/16 :goto_2

    :pswitch_38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/twitter/android/service/TwitterService;->b(Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_39
    const/16 v2, 0x3a

    move/from16 v0, v24

    if-ne v0, v2, :cond_30

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "account"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "settings"

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x200

    invoke-direct {v13, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz v2, :cond_31

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "geo_enabled"

    const-string v6, "geo"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    :goto_18
    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v5

    if-eqz v5, :cond_40

    :try_start_a
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const-string v6, "settings"

    invoke-static {v5}, Lcom/twitter/android/api/o;->a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/o;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-object v7, v2

    goto/16 :goto_2

    :cond_30
    const/4 v2, 0x0

    goto :goto_17

    :cond_31
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x1

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    goto :goto_18

    :catch_8
    move-exception v5

    const/4 v6, 0x0

    iput v6, v2, Lcom/twitter/android/network/a;->a:I

    iput-object v5, v2, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_3a
    const-string v5, "message_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    if-eqz v12, :cond_1

    array-length v13, v12

    const/4 v5, 0x0

    move v11, v5

    :goto_19
    if-ge v11, v13, :cond_32

    aget-wide v8, v12, v11

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JZ)Lcom/twitter/android/network/a;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLcom/twitter/android/network/a;)V

    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_19

    :cond_32
    invoke-virtual {v2, v12}, Lcom/twitter/android/provider/al;->c([J)I

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v2, v2, Lcom/twitter/android/network/d;->c:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "decider"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v8, 0x1

    invoke-static {v5, v7, v2, v8, v6}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->b()Z

    move-result v2

    if-eqz v2, :cond_42

    :try_start_b
    invoke-static {v6}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    const-string v6, "settings"

    invoke-static {v2}, Lcom/twitter/android/api/y;->q(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/g;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    move-object v7, v5

    goto/16 :goto_2

    :catch_9
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/a;->a:I

    iput-object v2, v5, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_2

    :pswitch_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "saved_searches"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "create"

    aput-object v9, v6, v8

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "query"

    invoke-direct {v8, v9, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_42

    :try_start_c
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/y;->m(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/x;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v2, v6, v7}, Lcom/twitter/android/provider/al;->a(Lcom/twitter/android/api/x;I)J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    move-object v7, v5

    goto/16 :goto_2

    :catch_a
    move-exception v2

    const/4 v6, 0x0

    iput v6, v5, Lcom/twitter/android/network/a;->a:I

    iput-object v2, v5, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    move-object v7, v5

    goto/16 :goto_2

    :pswitch_3d
    const-string v5, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Lcom/twitter/android/provider/al;->a(Ljava/lang/String;I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "saved_searches"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "destroy"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-virtual {v5, v6}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v11, 0x0

    invoke-static {v6, v10, v5, v7, v11}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v5

    iget v6, v5, Lcom/twitter/android/network/a;->a:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_33

    iget v6, v5, Lcom/twitter/android/network/a;->a:I

    const/16 v7, 0x194

    if-ne v6, v7, :cond_42

    :cond_33
    invoke-virtual {v2, v8, v9}, Lcom/twitter/android/provider/al;->b(J)I

    move-object v7, v5

    goto/16 :goto_2

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->s(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v7, v1}, Lcom/twitter/android/service/TwitterService;->t(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;Landroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_40
    invoke-virtual {v2}, Lcom/twitter/android/provider/al;->b()I

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v2

    const-string v5, "discover"

    const/4 v6, 0x0

    invoke-virtual {v2, v9, v5, v6}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_41
    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    const-string v5, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "q"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const/16 v20, 0x0

    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-lez v5, :cond_41

    const/16 v10, 0xa

    const-wide/16 v11, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v5 .. v19}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/provider/al;Lcom/twitter/android/network/i;JIJJJIZLandroid/content/Intent;)Lcom/twitter/android/network/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/network/a;->b()Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x1

    :goto_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v6, v6, Lcom/twitter/android/network/d;->b:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "related_results"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "show"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v6, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "include_entities"

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x400

    invoke-direct {v7, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12, v7}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_34

    :try_start_d
    invoke-static {v7}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/android/api/y;->u(Lorg/codehaus/jackson/JsonParser;)Ljava/util/ArrayList;

    move-result-object v7

    const/16 v10, 0xa

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v16}, Lcom/twitter/android/provider/al;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    move-result v2

    add-int/2addr v5, v2

    :cond_34
    :goto_1b
    const-string v2, "new_tweet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v7, v17

    goto/16 :goto_2

    :catch_b
    move-exception v2

    const/4 v6, 0x0

    move-object/from16 v0, v17

    iput v6, v0, Lcom/twitter/android/network/a;->a:I

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/twitter/android/network/a;->c:Ljava/lang/Exception;

    goto :goto_1b

    :pswitch_42
    const-string v2, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v6, v6, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "i"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "users"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "email_available"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "email"

    invoke-static {v6, v7, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "lang"

    invoke-static {v6, v2, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v8, 0x0

    invoke-static {v2, v7, v6, v8, v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_40

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    :try_start_e
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "valid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    const-string v6, "valid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    :cond_36
    const/4 v6, 0x0

    iput v6, v2, Lcom/twitter/android/network/a;->a:I

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/twitter/android/network/a;->b:Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_c

    :cond_37
    move-object v7, v2

    goto/16 :goto_2

    :catch_c
    move-exception v5

    const/4 v5, 0x0

    iput v5, v2, Lcom/twitter/android/network/a;->a:I

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_43
    const-string v2, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lang"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v8, v8, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "i"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "users"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "username_available"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "custom"

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v10, "context"

    const-string v11, "signup"

    invoke-static {v8, v10, v11}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_38

    const-string v10, "email"

    invoke-static {v8, v10, v2}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "full_name"

    invoke-static {v8, v2, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    if-eqz v9, :cond_3b

    const-string v2, "suggest"

    const/4 v5, 0x1

    invoke-static {v8, v2, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :goto_1c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "lang"

    invoke-static {v8, v2, v7}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v7, 0x0

    invoke-static {v2, v6, v8, v7, v5}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v6

    if-eqz v6, :cond_40

    :try_start_f
    invoke-static {v5}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/api/y;->w(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/q;

    move-result-object v5

    if-eqz v9, :cond_3c

    const/4 v6, 0x0

    iput v6, v2, Lcom/twitter/android/network/a;->a:I

    const-string v6, "stories"

    iget-object v5, v5, Lcom/twitter/android/api/q;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    move-object v7, v2

    goto/16 :goto_2

    :cond_3b
    const-string v2, "username"

    invoke-static {v8, v2, v5}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_3c
    :try_start_10
    iget-boolean v6, v5, Lcom/twitter/android/api/q;->a:Z

    if-nez v6, :cond_3d

    const/16 v6, 0x190

    iput v6, v2, Lcom/twitter/android/network/a;->a:I

    iget-object v5, v5, Lcom/twitter/android/api/q;->b:Ljava/lang/String;

    iput-object v5, v2, Lcom/twitter/android/network/a;->b:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_3d
    move-object v7, v2

    goto/16 :goto_2

    :catch_d
    move-exception v5

    const/4 v5, 0x0

    iput v5, v2, Lcom/twitter/android/network/a;->a:I

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_44
    const-string v2, "status_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    iget-object v2, v2, Lcom/twitter/android/network/d;->a:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "i"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "statuses"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x3

    const-string v6, "activity"

    aput-object v6, v8, v5

    const/4 v5, 0x4

    const-string v6, "summary"

    aput-object v6, v8, v5

    invoke-static {v2, v8}, Lcom/twitter/android/network/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".json"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v13, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    const/4 v12, 0x0

    move-object v11, v7

    invoke-static/range {v8 .. v13}, Lcom/twitter/android/network/a;->a(Lcom/twitter/android/network/b;Lcom/twitter/android/network/d;Ljava/lang/CharSequence;Lcom/twitter/android/network/i;ZLjava/io/OutputStream;)Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/a;->b()Z

    move-result v5

    if-eqz v5, :cond_40

    :try_start_11
    invoke-static {v13}, Lcom/twitter/android/service/TwitterService;->b(Ljava/io/ByteArrayOutputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v5

    const-string v6, "q"

    invoke-static {v5}, Lcom/twitter/android/api/y;->x(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/v;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    move-object v7, v2

    goto/16 :goto_2

    :catch_e
    move-exception v5

    const/4 v5, 0x0

    iput v5, v2, Lcom/twitter/android/network/a;->a:I

    move-object v7, v2

    goto/16 :goto_2

    :pswitch_45
    const-string v5, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v8, "impression_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x1

    new-array v8, v8, [J

    const/4 v10, 0x0

    aput-wide v5, v8, v10

    invoke-virtual {v2, v8}, Lcom/twitter/android/provider/al;->d([J)I

    move-result v2

    if-lez v2, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/service/TwitterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/twitter/android/provider/az;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_3e
    if-eqz v9, :cond_1

    const/16 v8, 0x9

    const-wide/16 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/service/TwitterService;->a(Lcom/twitter/android/network/i;ILjava/lang/String;J)V

    move-object/from16 v7, v17

    goto/16 :goto_2

    :catch_f
    move-exception v8

    goto/16 :goto_16

    :cond_3f
    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    goto/16 :goto_3

    :cond_40
    move-object v7, v2

    goto/16 :goto_2

    :cond_41
    move/from16 v5, v20

    goto/16 :goto_1a

    :cond_42
    move-object v7, v5

    goto/16 :goto_2

    :cond_43
    move-object v7, v8

    goto/16 :goto_2

    :cond_44
    move/from16 v19, v8

    move v8, v11

    goto/16 :goto_11

    :cond_45
    move/from16 v20, v9

    goto/16 :goto_12

    :cond_46
    move-object v7, v12

    goto/16 :goto_2

    :cond_47
    move-object v7, v14

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_41
        :pswitch_33
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_40
        :pswitch_45
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->f:Lcom/twitter/android/network/b;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x32

    const/high16 v2, 0x42480000

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/TwitterService;->g:Lcom/twitter/android/network/d;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/twitter/android/service/c;

    invoke-direct {v1, p0, p1, p3}, Lcom/twitter/android/service/c;-><init>(Lcom/twitter/android/service/TwitterService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/twitter/android/service/TwitterService;->e:Ljava/util/LinkedHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    return v0
.end method
