/**
 * Bungie.Net API
 * These endpoints constitute the functionality exposed by Bungie.net, both for more traditional website functionality and for connectivity to Bungie video games and their related functionality.
 *
 * OpenAPI spec version: 2.3.2
 * Contact: support@bungie.com
 *
 * NOTE: This class is auto generated by the bungie-api-ts code generator program.
 * https://github.com/DestinyItemManager/bugie-api-ts
 * Do not edit these files manually.
 */

import 'dart:async';
import '../http.dart';

import '../common.dart';
import '../platform.dart';
import './interfaces.dart';

abstract class GetTopicsPagedParams {
  /** A category filter */
  ForumTopicsCategoryFiltersEnum categoryFilter;
  /** The group, if any. */
  String group;
  /**
   * Comma seperated list of locales posts must match to return in the result list.
   * Default 'en'
   */
  String locales;
  /** Zero paged page number */
  int page;
  /** Unused */
  int pageSize;
  /** A date filter. */
  ForumTopicsQuickDateEnum quickDate;
  /** The sort mode. */
  ForumTopicsSortEnum sort;
  /** The tags to search, if any. */
  String tagstring;
}

/** Get topics from any forum. */
  Future<ServerResponse<PostSearchResponse>> getTopicsPaged(HttpClient http, GetTopicsPagedParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetTopicsPaged/${params.page}/${params.pageSize}/${params.group}/${params.sort}/${params.quickDate}/${params.categoryFilter}/",
    {
      'locales': params.locales,
      'tagstring': params.tagstring
    },
    null
    ));
}

abstract class GetCoreTopicsPagedParams {
  /** The category filter. */
  ForumTopicsCategoryFiltersEnum categoryFilter;
  /**
   * Comma seperated list of locales posts must match to return in the result list.
   * Default 'en'
   */
  String locales;
  /** Zero base page */
  int page;
  /** The date filter. */
  ForumTopicsQuickDateEnum quickDate;
  /** The sort mode. */
  ForumTopicsSortEnum sort;
}

/** Gets a listing of all topics marked as part of the core group. */
  Future<ServerResponse<PostSearchResponse>> getCoreTopicsPaged(HttpClient http, GetCoreTopicsPagedParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetCoreTopicsPaged/${params.page}/${params.sort}/${params.quickDate}/${params.categoryFilter}/",
    {
      'locales': params.locales
    },
    null
    ));
}

abstract class GetPostsThreadedPagedParams {
  bool getParentPost;
  int page;
  int pageSize;
  String parentPostId;
  int replySize;
  bool rootThreadMode;
  /** If this value is not null or empty, banned posts are requested to be returned */
  String showbanned;
  ForumPostSortEnum sortMode;
}

/**
 * Returns a thread of posts at the given parent, optionally returning replies to
 * those posts as well as the original parent.
 */
  Future<ServerResponse<PostSearchResponse>> getPostsThreadedPaged(HttpClient http, GetPostsThreadedPagedParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetPostsThreadedPaged/${params.parentPostId}/${params.page}/${params.pageSize}/${params.replySize}/${params.getParentPost}/${params.rootThreadMode}/${params.sortMode}/",
    {
      'showbanned': params.showbanned
    },
    null
    ));
}

abstract class GetPostsThreadedPagedFromChildParams {
  String childPostId;
  int page;
  int pageSize;
  int replySize;
  bool rootThreadMode;
  /** If this value is not null or empty, banned posts are requested to be returned */
  String showbanned;
  ForumPostSortEnum sortMode;
}

/**
 * Returns a thread of posts starting at the topicId of the input childPostId,
 * optionally returning replies to those posts as well as the original parent.
 */
  Future<ServerResponse<PostSearchResponse>> getPostsThreadedPagedFromChild(HttpClient http, GetPostsThreadedPagedFromChildParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetPostsThreadedPagedFromChild/${params.childPostId}/${params.page}/${params.pageSize}/${params.replySize}/${params.rootThreadMode}/${params.sortMode}/",
    {
      'showbanned': params.showbanned
    },
    null
    ));
}

abstract class GetPostAndParentParams {
  String childPostId;
  /** If this value is not null or empty, banned posts are requested to be returned */
  String showbanned;
}

/** Returns the post specified and its immediate parent. */
  Future<ServerResponse<PostSearchResponse>> getPostAndParent(HttpClient http, GetPostAndParentParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetPostAndParent/${params.childPostId}/",
    {
      'showbanned': params.showbanned
    },
    null
    ));
}

abstract class GetPostAndParentAwaitingApprovalParams {
  String childPostId;
  /** If this value is not null or empty, banned posts are requested to be returned */
  String showbanned;
}

/**
 * Returns the post specified and its immediate parent of posts that are awaiting
 * approval.
 */
  Future<ServerResponse<PostSearchResponse>> getPostAndParentAwaitingApproval(HttpClient http, GetPostAndParentAwaitingApprovalParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetPostAndParentAwaitingApproval/${params.childPostId}/",
    {
      'showbanned': params.showbanned
    },
    null
    ));
}

abstract class GetTopicForContentParams {
  String contentId;
}

/** Gets the post Id for the given content item's comments, if it exists. */
  Future<ServerResponse<String>> getTopicForContent(HttpClient http, GetTopicForContentParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetTopicForContent/${params.contentId}/",
    null,
    null
    ));
}

abstract class GetForumTagSuggestionsParams {
  /** The partial tag input to generate suggestions from. */
  String partialtag;
}

/**
 * Gets tag suggestions based on partial text entry, matching them with other tags
 * previously used in the forums.
 */
  Future<ServerResponse<List<TagResponse>>> getForumTagSuggestions(HttpClient http, GetForumTagSuggestionsParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/GetForumTagSuggestions/",
    {
      'partialtag': params.partialtag
    },
    null
    ));
}

abstract class GetPollParams {
  /** The post id of the topic that has the poll. */
  String topicId;
}

/** Gets the specified forum poll. */
  Future<ServerResponse<PostSearchResponse>> getPoll(HttpClient http, GetPollParams params) {
  return http.request(new HttpClientConfig(
    'GET',
    "https://www.bungie.net/Platform/Forum/Poll/${params.topicId}/",
    null,
    null
    ));
}

abstract class JoinFireteamThreadParams {
  /** The post id of the recruitment topic you wish to join. */
  String topicId;
}

/**
 * Allows a user to slot themselves into a recruitment thread fireteam slot.
 * Returns the new state of the fireteam.
 */
  Future<ServerResponse<ForumRecruitmentDetail>> joinFireteamThread(HttpClient http, JoinFireteamThreadParams params) {
  return http.request(new HttpClientConfig(
    'POST',
    "https://www.bungie.net/Platform/Forum/Recruit/Join/${params.topicId}/",
    null,
    null
    ));
}

abstract class LeaveFireteamThreadParams {
  /** The post id of the recruitment topic you wish to leave. */
  String topicId;
}

/**
 * Allows a user to remove themselves from a recruitment thread fireteam slot.
 * Returns the new state of the fireteam.
 */
  Future<ServerResponse<ForumRecruitmentDetail>> leaveFireteamThread(HttpClient http, LeaveFireteamThreadParams params) {
  return http.request(new HttpClientConfig(
    'POST',
    "https://www.bungie.net/Platform/Forum/Recruit/Leave/${params.topicId}/",
    null,
    null
    ));
}

abstract class KickBanFireteamApplicantParams {
  /** The id of the user you wish to kick. */
  String targetMembershipId;
  /** The post id of the recruitment topic you wish to join. */
  String topicId;
}

/**
 * Allows a recruitment thread owner to kick a join user from the fireteam. Returns
 * the new state of the fireteam.
 */
  Future<ServerResponse<ForumRecruitmentDetail>> kickBanFireteamApplicant(HttpClient http, KickBanFireteamApplicantParams params) {
  return http.request(new HttpClientConfig(
    'POST',
    "https://www.bungie.net/Platform/Forum/Recruit/KickBan/${params.topicId}/${params.targetMembershipId}/",
    null,
    null
    ));
}

abstract class ApproveFireteamThreadParams {
  /** The post id of the recruitment topic to approve. */
  String topicId;
}

/**
 * Allows the owner of a fireteam thread to approve all joined members and start a
 * private message conversation with them.
 */
  Future<ServerResponse<SaveMessageResult>> approveFireteamThread(HttpClient http, ApproveFireteamThreadParams params) {
  return http.request(new HttpClientConfig(
    'POST',
    "https://www.bungie.net/Platform/Forum/Recruit/Approve/${params.topicId}/",
    null,
    null
    ));
}

/**
 * Allows the caller to get a list of to 25 recruitment thread summary information
 * objects.
 */
  Future<ServerResponse<List<ForumRecruitmentDetail>>> getRecruitmentThreadSummaries(HttpClient http, List<String> body) {
  return http.request(new HttpClientConfig(
    'POST',
    "https://www.bungie.net/Platform/Forum/Recruit/Summaries/",
    null,
    body
    ));
}
