#!/usr/bin/env python
import sys, os
import zipfile
import argparse
import boto3
import logging

def main():
    parser = argparse.ArgumentParser(description='uploads a lambda functions then associates it with a bucket')
    parser.add_argument('--log', help='set the log level, debug, info, warn, error and so on')

    args = parser.parse_args()

    logger = logging.Logger(__name__)

    if args.log :
        logger.setLevel(args.log.upper())
        logging.info(args.log.upper())

if __name__ == '__main__':
    main()

